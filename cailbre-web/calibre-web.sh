#!/bin/bash

APP_HOME=/zscloud/cache/app/calibre-web
mkdir -p $APP_HOME/config
mkdir -p $APP_HOME/books

docker run -d \
  --name=calibre-web \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Asia/Shanghai \
  -e DOCKER_MODS=ghcr.io/linuxserver/mods:universal-calibre \
  -p 8083:8083 \
  -v $APP_HOME/config:/config \
  -v $APP_HOME/books:/books \
  --restart unless-stopped \
  linuxserver/calibre-web:latest