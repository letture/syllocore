#!/bin/bash

APP_HOME=/zscloud/cache/app/davos

mkdir -p $APP_HOME/data
mkdir -p $APP_HOME/downloads/folder

docker run -d \
  --name=davos \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Asia/Shanghai \
  -p 8080:8080 \
  -v $APP_HOME/data:/config \
  -v $APP_HOME/downloads/folder:/download \
  --restart unless-stopped \
  linuxserver/davos:latest