#!/bin/bash

APP_HOME=/zscloud/cache/app
mkdir -p $APP_HOME/calibre-web/config
mkdir -p $APP_HOME/Media/Books

docker run -d \
  --name=calibre-web \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Asia/Shanghai \
  -p 8083:8083 \
  -v $APP_HOME/calibre-web/config:/config \
  -v $APP_HOME/Media/Books:/books \
  --restart unless-stopped \
  linuxserver/calibre-web:latest