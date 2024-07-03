#!/bin/bash

APP_HOME=/zscloud/cache/app/resilio-sync
mkdir -p $APP_HOME/config
mkdir -p $APP_HOME/data
Downloads=/zscloud/cache/app/downloads
mkdir -p $Downloads

docker run --name resilio-sync \
    -e PUID=1000 \
    -e PGID=1000 \
    -e TZ=Asia/Shanghai \
    -p 55555:55555 \
    -p 8889:8888 \
    -v $APP_HOME/config:/config \
    -v $APP_HOME/data:/sync \
    -v $Downloads:/downloads \
    --restart unless-stopped \
    -d registry.wh.gpuez.com/linuxserver/resilio-sync:2.7.3