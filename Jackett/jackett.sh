#!/bin/bash

APP_HOME=/zscloud/cache/app/jackett
Downloads=/zscloud/cache/app/downloads
mkdir -p $APP_HOME/config
mkdir -p $Downloads

docker run --name jackett\
    -e PUID=1000 \
    -e PGID=1000 \
    -e TZ=Asia/Shanghai \
    -e AUTO_UPDATE=true \
    -p 9117:9117 \
    -v $APP_HOME/config:/config \
    -v $Downloads:/downloads \
    --restart unless-stopped \
    -d linuxserver/jackett:0.21.341