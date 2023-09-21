#!/bin/bash

APP_HOME=/zscloud/cache/app/headphones
mkdir -p $APP_HOME/appdata/config
mkdir -p $APP_HOME/downloads
mkdir -p $APP_HOME/music

docker run -d \
  --name=headphones \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Asia/Shanghai \
  -p 8181:8181 \
  -v $APP_HOME/appdata/config:/config \
  -v $APP_HOME/downloads:/downloads \
  -v $APP_HOME/music:/music \
  --restart unless-stopped \
  linuxserver/headphones:latest