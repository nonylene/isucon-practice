app_path = "/home/isucon/webapp/ruby"

#ソケット、pidファイル 設定
#graceful restart(要はreloadは) sudo kill -s usr2 `cat unicorn.pid`で
listen app_path + "/unicorn.sock"
pid    app_path + "/unicorn.pid"

#ログとか出力系設定
log =  app_path + "/log/unicorn.log"



worker_processes 10
preload_app true
