#!/bin/bash

APP_HOME=/zscloud/cache/app/mariadb
mkdir -p $APP_HOME/config

docker run -d \
  --name=mariadb \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Asia/Shanghai \
  -e MYSQL_ROOT_PASSWORD=syllocore \
  -e MYSQL_DATABASE=syllocore \
  -e MYSQL_USER=syllocore \
  -e MYSQL_PASSWORD=syllocore \
  -p 3306:3306 \
  -v $APP_HOME/config:/config \
  --restart unless-stopped \
  linuxserver/mariadb:10.11.4