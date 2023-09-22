#!/bin/bash

APP_HOME=/zscloud/cache/app
mkdir -p $APP_HOME/emby/config
mkdir -p $APP_HOME/Media/tv
mkdir -p $APP_HOME/Media/movies

docker run -d \
  --name=emby \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Asia/Shanghai \
  -p 8096:8096 \
  -p 8920:8920 `#optional` \
  -v $APP_HOME/emby/config:/config \
  -v $APP_HOME/Media/tv:/data/tvshows \
  -v $APP_HOME/Media/movies:/data/movies \
  --restart unless-stopped \
  linuxserver/emby:latest