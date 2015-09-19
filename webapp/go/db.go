package main

import (
    "github.com/garyburd/redigo/redis"
    "database/sql"
    "errors"
    "net/http"
    "time"
//    "fmt"
//    "crypto/rand"
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
//    succ := "0"
//    if succeeded {
//        succ = "1"
//    }

    idStr := strconv.Itoa(user.ID)

//    b := make([]byte, 8)
//    rand.Read(b)
//    key := idStr + ":" + fmt.Sprintf("%x", b)

    timenow := time.Now()
    m := map[string]string{
        "time":  timenow.Format(timeLayout),
//        "id": idStr,
        "name":   login,
        "ip":  remoteAddr,
//        "result":  succ,
    }

//    rd.Send("hmset", redis.Args{}.Add(key).AddFlat(m)...)

    if succeeded {
        rd.Send("rename", "laslog:last:" + idStr, "laslog:lastnext:" + idStr )
        rd.Send("hmset", redis.Args{}.Add("laslog:last:" + idStr).AddFlat(m)...)

        rd.Send("set", "id:" + idStr, 0)
        rd.Send("set", "ip:" + remoteAddr, 0)
    } else {
        rd.Send("incr", "id:" + idStr)
        rd.Send("incr", "ip:" + remoteAddr)
    }

    succa := 0
    if succeeded {
        succa = 1
    }

    var userId sql.NullInt64
    if user != nil {
        userId.Int64 = int64(user.ID)
        userId.Valid = true
    }

    db.Exec(
        "INSERT INTO login_log (`created_at`, `user_id`, `login`, `ip`, `succeeded`) "+
            "VALUES (?,?,?,?,?)",
        timenow, userId, login, remoteAddr, succa,
    )

    return nil
}

func isLockedUser(user *User) (bool, error) {
    if user == nil {
        return false, nil
    }

    count, _ := redis.Int(rd.Do("get", "id:" + strconv.Itoa(user.ID)))

    return UserLockThreshold <= count, nil
}

func isBannedIP(ip string) (bool, error) {

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

    if banned, _ := isBannedIP(remoteAddr); banned {
        return nil, ErrBannedIP
    }

    if locked, _ := isLockedUser(user); locked {
        return nil, ErrLockedUser
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
    ips := []string{}

    rows, err := db.Query(
        "SELECT ip FROM "+
            "(SELECT ip, MAX(succeeded) as max_succeeded, COUNT(1) as cnt FROM login_log GROUP BY ip) "+
            "AS t0 WHERE t0.max_succeeded = 0 AND t0.cnt >= ?",
        IPBanThreshold,
    )

    if err != nil {
        return ips
    }

    defer rows.Close()
    for rows.Next() {
        var ip string

        if err := rows.Scan(&ip); err != nil {
            return ips
        }
        ips = append(ips, ip)
    }
    if err := rows.Err(); err != nil {
        return ips
    }

    rowsB, err := db.Query(
        "SELECT ip, MAX(id) AS last_login_id FROM login_log WHERE succeeded = 1 GROUP by ip",
    )

    if err != nil {
        return ips
    }

    defer rowsB.Close()
    for rowsB.Next() {
        var ip string
        var lastLoginId int

        if err := rows.Scan(&ip, &lastLoginId); err != nil {
            return ips
        }

        var count int

        err = db.QueryRow(
            "SELECT COUNT(1) AS cnt FROM login_log WHERE ip = ? AND ? < id",
            ip, lastLoginId,
        ).Scan(&count)

        if err != nil {
            return ips
        }

        if IPBanThreshold <= count {
            ips = append(ips, ip)
        }
    }
    if err := rowsB.Err(); err != nil {
        return ips
    }

    return ips
}

func lockedUsers() []string {
    userIds := []string{}

    rows, err := db.Query(
        "SELECT user_id, login FROM "+
            "(SELECT user_id, login, MAX(succeeded) as max_succeeded, COUNT(1) as cnt FROM login_log GROUP BY user_id) "+
            "AS t0 WHERE t0.user_id IS NOT NULL AND t0.max_succeeded = 0 AND t0.cnt >= ?",
        UserLockThreshold,
    )

    if err != nil {
        return userIds
    }

    defer rows.Close()
    for rows.Next() {
        var userId int
        var login string

        if err := rows.Scan(&userId, &login); err != nil {
            return userIds
        }
        userIds = append(userIds, login)
    }
    if err := rows.Err(); err != nil {
        return userIds
    }

    rowsB, err := db.Query(
        "SELECT user_id, login, MAX(id) AS last_login_id FROM login_log WHERE user_id IS NOT NULL AND succeeded = 1 GROUP BY user_id",
    )

    if err != nil {
        return userIds
    }

    defer rowsB.Close()
    for rowsB.Next() {
        var userId int
        var login string
        var lastLoginId int

        if err := rowsB.Scan(&userId, &login, &lastLoginId); err != nil {
            return userIds
        }

        var count int

        err = db.QueryRow(
            "SELECT COUNT(1) AS cnt FROM login_log WHERE user_id = ? AND ? < id",
            userId, lastLoginId,
        ).Scan(&count)

        if err != nil {
            return userIds
        }

        if UserLockThreshold <= count {
            userIds = append(userIds, login)
        }
    }
    if err := rowsB.Err(); err != nil {
        return userIds
    }

    return userIds
}

func getLastLogin(userId interface{}) (*LastLogin, error) {
    laslog, _ := redis.StringMap(rd.Do("hgetall", "laslog:lastnext:" + userId.(string)))

    lastLogin := &LastLogin{}

    if len(laslog) != 0 {
        lastLogin.Login = laslog["name"]
        lastLogin.IP = laslog["ip"]
        lastLogin.CreatedAt = laslog["time"]
    }

    return lastLogin, nil
}
