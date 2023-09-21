#!/bin/bash
APP_HOME=/zscloud/cache/app/filebrowser

mkdir -p $APP_HOME/data
mkdir -p $APP_HOME/cache
touch $APP_HOME/database.db

cat > $APP_HOME/filebrowser.json <<EOF
{
  "port": 80,
  "baseURL": "",
  "address": "",
  "log": "stdout",
  "cacheDir":"/tmp",
  "database": "/database.db",
  "root": "/srv"
}
EOF

docker run -idt --name filebrowser \
        --restart always \
        -v $APP_HOME/data:/srv \
        -v $APP_HOME/cache:/tmp \
        -v $APP_HOME/database.db:/database.db \
        -v $APP_HOME/filebrowser.json:/filebrowser.json \
        -u $(id -u):$(id -g) -p 8001:80 docker.aukoo.cn/filebrowser