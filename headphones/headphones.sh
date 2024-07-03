#!/bin/bash

APP_HOME=/zscloud/cache/app
mkdir -p $APP_HOME/headphones/config
mkdir -p $APP_HOME/Media/musics
Downloads=/zscloud/cache/app/downloads
mkdir -p $Downloads

docker run -d \
  --name=headphones \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Asia/Shanghai \
  -p 8181:8181 \
  -v $APP_HOME/headphones/config:/config \
  -v $Downloads:/downloads \
  -v $APP_HOME/Media/musics:/music \
  --restart unless-stopped \
  registry.wh.gpuez.com/linuxserver/headphones:latest