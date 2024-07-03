#!/bin/bash

APP_HOME=/zscloud/cache/app/homeassistant
mkdir -p $APP_HOME/config

docker run --name homeassistant\
    -e PUID=1000 \
    -e PGID=1000 \
    -e TZ=Asia/Shanghai \
    -p 8123:8123 \
    -v $APP_HOME/config:/config \
    --restart unless-stopped \
    -d registry.wh.gpuez.com/linuxserver/homeassistant:2023.6.3