package main

import (
    "github.com/garyburd/redigo/redis"
    "database/sql"
    "errors"
    "net/http"
    "time"
    "strings"
    "strconv"
)

type User struct {
    ID           int
    Login        string
    PasswordHash string
    Salt         string
}

type LastLogin struct {
    Login     string
    IP        string
    CreatedAt string
}

const timeLayout = "2006-01-02 15:04:05"

var (
    ErrBannedIP      = errors.New("Banned IP")
    ErrLockedUser    = errors.New("Locked user")
    ErrUserNotFound  = errors.New("Not found user")
    ErrWrongPassword = errors.New("Wrong password")
)

func createLoginLog(succeeded bool, remoteAddr, login string, user *User) error {
    rd := pool.Get()
    defer rd.Close()

    idStr := strconv.Itoa(user.ID)

    timenow := time.Now()
    m := map[string]string{
        "time":  timenow.Format(timeLayout),
        "name":   login,
        "ip":  remoteAddr,
    }

    if succeeded {
        rd.Send("rename", "laslog:last:" + idStr, "laslog:lastnext:" + idStr )
        rd.Send("hmset", redis.Args{}.Add("laslog:last:" + idStr).AddFlat(m)...)

        rd.Send("del", "id:" + login)
        rd.Send("del", "ip:" + remoteAddr)
    } else {
        rd.Send("incr", "id:" + login)
        rd.Send("incr", "ip:" + remoteAddr)
    }

    return nil
}

func isLockedUser(login string) (bool, error) {
    rd := pool.Get()
    defer rd.Close()

    count, _ := redis.Int(rd.Do("get", "id:" + login))

    return UserLockThreshold <= count, nil
}

func isBannedIP(ip string) (bool, error) {
    rd := pool.Get()
    defer rd.Close()

    count, _ := redis.Int(rd.Do("get", "ip:" + ip))

    return IPBanThreshold <= count, nil
}

func attemptLogin(req *http.Request) (*User, error) {
    succeeded := false
    user := &User{}

    loginName := req.PostFormValue("login")
    password := req.PostFormValue("password")

    remoteAddr := req.RemoteAddr
    if xForwardedFor := req.Header.Get("X-Forwarded-For"); len(xForwardedFor) > 0 {
        remoteAddr = xForwardedFor
    }

    defer func() {
        createLoginLog(succeeded, remoteAddr, loginName, user)
    }()

    if banned, _ := isBannedIP(remoteAddr); banned {
        return nil, ErrBannedIP
    }

    if locked, _ := isLockedUser(loginName); locked {
        return nil, ErrLockedUser
    }


    row := db.QueryRow(
        "SELECT id, login, password_hash, salt FROM users WHERE login = ?",
        loginName,
    )
    err := row.Scan(&user.ID, &user.Login, &user.PasswordHash, &user.Salt)

    switch {
    case err == sql.ErrNoRows:
        user = nil
    case err != nil:
        return nil, err
    }

    if user == nil {
        return nil, ErrUserNotFound
    }

    if user.PasswordHash != calcPassHash(password, user.Salt) {
        return nil, ErrWrongPassword
    }

    succeeded = true
    return user, nil
}

func getCurrentUser(userId interface{}) *User {
    user := &User{}
    row := db.QueryRow(
        "SELECT id, login, password_hash, salt FROM users WHERE id = ?",
        userId,
    )
    err := row.Scan(&user.ID, &user.Login, &user.PasswordHash, &user.Salt)

    if err != nil {
        return nil
    }

    return user
}

func bannedIPs() []string {
    rd := pool.Get()
    defer rd.Close()

    ips := []string{}

    iplogs, _ := redis.Strings(rd.Do("keys", "ip:*"))

    for _, ipkey := range iplogs {
        ip := strings.Split(ipkey, ":")[1]
        if banned, _ := isBannedIP(ip); banned {
            ips = append(ips,ip)
        }
    }

    return ips
}

func lockedUsers() []string {
    rd := pool.Get()
    defer rd.Close()

    userIds := []string{}

    idlogs, _ := redis.Strings(rd.Do("keys", "id:*"))

    for _, idkey := range idlogs {
        id := strings.Split(idkey, ":")[1]
        if banned, _ := isLockedUser(id); banned {
            userIds = append(userIds ,id)
        }
    }
    return userIds
}

func getLastLogin(userId interface{}) (*LastLogin, error) {
    rd := pool.Get()
    defer rd.Close()

    laslog, _ := redis.StringMap(rd.Do("hgetall", "laslog:lastnext:" + userId.(string)))

    lastLogin := &LastLogin{}

    if len(laslog) != 0 {
        lastLogin.Login = laslog["name"]
        lastLogin.IP = laslog["ip"]
        lastLogin.CreatedAt = laslog["time"]
    }

    return lastLogin, nil
}
