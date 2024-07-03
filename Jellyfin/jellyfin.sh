#!/bin/bash

APP_HOME=/zscloud/cache/app
mkdir -p $APP_HOME/jellyfin/config
mkdir -p $APP_HOME/Media/tv
mkdir -p $APP_HOME/Media/movies

docker run --name jellyfin\
    -e PUID=1000 \
    -e PGID=1000 \
    -e TZ=Asia/Shanghai \
    -p 8097:8096 \
    -v $APP_HOME/jellyfin/config:/config \
    -v $APP_HOME/Media/tv:/data/tvshows \
    -v $APP_HOME/Media/movies:/data/movies \
    --restart unless-stopped \
    -d registry.wh.gpuez.com/syllocore/linuxserver/jellyfin:latest