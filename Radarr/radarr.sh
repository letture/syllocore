#!/bin/bash

APP_HOME=/zscloud/cache/app
mkdir -p $APP_HOME/radarr/config
mkdir -p $APP_HOME/Media/movies
Downloads=/zscloud/cache/app/downloads
mkdir -p $Downloads

docker run --name radarr \
    -e PUID=1000 \
    -e PGID=1000 \
    -e TZ=Asia/Shanghai \
    -p 7878:7878 \
    -v $APP_HOME/config:/config \
    -v $APP_HOME/Media/movies:/movies \
    -v $Downloads:/downloads \
    --restart unless-stopped \
    -d registry.wh.gpuez.com/linuxserver/radarr:4.7.5