package main

import (
    "github.com/garyburd/redigo/redis"
    _ "github.com/go-sql-driver/mysql"
    "strconv"
    "database/sql"
    "fmt"
    "os"
    "time"
)

const timeLayout = "2006-01-02 15:04:05"

func main(){
    dsn := fmt.Sprintf(
        "%s:%s@tcp(%s:%s)/%s?parseTime=true&loc=Local",
        getEnv("ISU4_DB_USER", "root"),
        getEnv("ISU4_DB_PASSWORD", ""),
        getEnv("ISU4_DB_HOST", "localhost"),
        getEnv("ISU4_DB_PORT", "3306"),
        getEnv("ISU4_DB_NAME", "isu4_qualifier"),
    )

    rd, _ := redis.Dial("tcp", ":6379")
    defer rd.Close()

    rd.Send("flushall")

    db, err := sql.Open("mysql", dsn)
    if err != nil {
        panic(err)
    }

    rows, _ := db.Query(
        "select user_id, ip, succeeded, created_at, login  from login_log order by id",
    )


    for rows.Next() {
        var ip string
        var user_id int
        var succeeded int
        var created time.Time
        var login string

        rows.Scan(&user_id, &ip, &succeeded, &created, &login)

        m := map[string]string{
            "time":  created.Format(timeLayout),
            "name":   login,
            "ip":  ip,
        }

        id := strconv.Itoa(user_id)

        if succeeded == 1 {
           rd.Send("rename", "laslog:last:" + id, "laslog:lastnext:" + id )
           rd.Send("hmset", redis.Args{}.Add("laslog:last:" + id).AddFlat(m)...)

            rd.Send("set", "id:" + login, 0)
            rd.Send("set", "ip:" + ip, 0)
        } else {
            rd.Send("incr", "id:" + login)
            rd.Send("incr", "ip:" + ip)
        }
    }
}


func getEnv(key string, def string) string {
    v := os.Getenv(key)
    if len(v) == 0 {
        return def
    }

    return v
}

