#!/bin/bash

APP_HOME=/zscloud/cache/app/sabnzbd
mkdir -p $APP_HOME/config
mkdir -p $APP_HOME/data
Downloads=/zscloud/cache/app/downloads
mkdir -p $Downloads

docker run --name sabnzbd \
    -e PUID=1000 \
    -e PGID=1000 \
    -e TZ=Asia/Shanghai \
    -p 8282:8080 \
    -v $APP_HOME/config:/config \
    -v $Downloads:/downloads \
    -v $Downloads:/incomplete-downloads \
    --restart unless-stopped \
    -d registry.wh.gpuez.com/syllocore/linuxserver/sabnzbd:4.0.3