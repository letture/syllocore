#!/bin/bash

APP_HOME=/zscloud/cache/app/raneto

mkdir -p $APP_HOME/appdata

docker run -d \
  --name=raneto \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Asia/Shanghai \
  -p 3000:3000 \
  -v $APP_HOME/appdata:/config \
  --restart unless-stopped \
  linuxserver/raneto:latest