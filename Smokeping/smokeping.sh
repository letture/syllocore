#!/bin/bash

APP_HOME=/zscloud/cache/app/smokeping
mkdir -p $APP_HOME/config
mkdir -p $APP_HOME/data

docker run --name smokeping \
    -e PUID=1000 \
    -e PGID=1000 \
    -e TZ=Asia/Shanghai \
    -p 10280:80 \
    -v $APP_HOME/config:/config \
    -v $APP_HOME/data:/data \
    --restart unless-stopped \
    -d linuxserver/smokeping:2.8.2