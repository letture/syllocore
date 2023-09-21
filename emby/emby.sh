#!/bin/bash

APP_HOME=/zscloud/cache/app/emby
mkdir -p $APP_HOME/library
mkdir -p $APP_HOME/tvshows
mkdir -p $APP_HOME/movies

docker run -d \
  --name=emby \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Asia/Shanghai \
  -p 8096:8096 \
  -p 8920:8920 `#optional` \
  -v $APP_HOME/library:/config \
  -v $APP_HOME/tvshows:/data/tvshows \
  -v $APP_HOME/movies:/data/movies \
  --device /dev/dri:/dev/dri `#optional` \
  --device /dev/vchiq:/dev/vchiq `#optional` \
  --device /dev/video10:/dev/video10 `#optional` \
  --device /dev/video11:/dev/video11 `#optional` \
  --device /dev/video12:/dev/video12 `#optional` \
  --restart unless-stopped \
  linuxserver/emby:latest