#!/bin/bash

APP_HOME=/zscloud/cache/app
mkdir -p $APP_HOME/lidarr/config
mkdir -p $APP_HOME/Media/musics
Downloads=/zscloud/cache/app/downloads
mkdir -p $Downloads

docker run --name lidarr \
    -e PUID=1000 \
    -e PGID=1000 \
    -e TZ=Asia/Shanghai \
    -p 8686:8686 \
    -v $APP_HOME/lidarr/config:/config \
    -v $APP_HOME/Media/musics:/music \
    -v $Downloads:/downloads \
    --restart unless-stopped \
    -d registry.wh.gpuez.com/linuxserver/lidarr:1.2.6