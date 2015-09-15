package main

import (
	"database/sql"
	"fmt"
	"github.com/go-martini/martini"
	_ "github.com/go-sql-driver/mysql"
	"github.com/martini-contrib/render"
	"github.com/martini-contrib/sessions"
	"net"
	"net/http"
    "os"
    "log"
    "syscall"
    "os/signal"
    "io/ioutil"

	"strconv"
)

var db *sql.DB
var (
	UserLockThreshold int
	IPBanThreshold    int
)

func init() {
	dsn := fmt.Sprintf(
		"%s:%s@tcp(%s:%s)/%s?parseTime=true&loc=Local",
		getEnv("ISU4_DB_USER", "root"),
		getEnv("ISU4_DB_PASSWORD", ""),
		getEnv("ISU4_DB_HOST", "localhost"),
		getEnv("ISU4_DB_PORT", "3306"),
		getEnv("ISU4_DB_NAME", "isu4_qualifier"),
	)

	var err error

	db, err = sql.Open("mysql", dsn)
	if err != nil {
		panic(err)
	}

	UserLockThreshold, err = strconv.Atoi(getEnv("ISU4_USER_LOCK_THRESHOLD", "3"))
	if err != nil {
		panic(err)
	}

	IPBanThreshold, err = strconv.Atoi(getEnv("ISU4_IP_BAN_THRESHOLD", "10"))
	if err != nil {
		panic(err)
	}
}

func main() {
	m := martini.Classic()

	store := sessions.NewCookieStore([]byte("secret-isucon"))
	m.Use(sessions.Sessions("isucon_go_session", store))

	m.Use(render.Renderer(render.Options{
		Layout: "layout",
	}))

	m.Get("/", func(req *http.Request) string {
        var path string
        switch req.URL.Query().Get("f"){
            case "b": path = "ban"
            case "l": path = "lock"
            case "m": path = "must"
            case "w": path = "wrong"
            default: path = "nomsg"
        }
        s, _ := ioutil.ReadFile("../public/index/" + path + ".html")
        return string(s)
	})

	m.Post("/login", func(req *http.Request, r render.Render, session sessions.Session) {
		user, err := attemptLogin(req)

		notice := ""
		if err != nil || user == nil {
			switch err {
			case ErrBannedIP:
				notice = "b"
			case ErrLockedUser:
				notice = "l"
			default:
				notice = "w"
			}

			r.Redirect("/?f=" + notice)
			return
		}

		session.Set("user_id", strconv.Itoa(user.ID))
		r.Redirect("/mypage")
	})

	m.Get("/mypage", func(r render.Render, session sessions.Session) {

        id := session.Get("user_id")
		if id == nil {
			r.Redirect("/?f=m")
			return
		}

        lastLogin, err := getLastLogin(id)
        if err != nil {
            panic (err)
        }

		r.HTML(200, "mypage", lastLogin)
	})

	m.Get("/report", func(r render.Render) {
		r.JSON(200, map[string][]string{
			"banned_ips":   bannedIPs(),
			"locked_users": lockedUsers(),
		})
	})

    //http.ListenAndServe(":8080", m)
    l,err := net.Listen("unix", "/tmp/go.sock")
    if err != nil {
        panic(err)
        return
    }

    sigc := make(chan os.Signal, 1)
    signal.Notify(sigc, os.Interrupt, os.Kill, syscall.SIGTERM)
    go func(c chan os.Signal){
        sig := <- c
        log.Printf("Caught signal %s: shutting down.", sig)
        l.Close()
        os.Exit(0)
    }(sigc)

    err = http.Serve(l, m)
    if err != nil {
        panic(err)
    }
}
