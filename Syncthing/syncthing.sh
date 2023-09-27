#!/bin/bash

APP_HOME=/zscloud/cache/app/syncthing
mkdir -p $APP_HOME/config

docker run --name syncthing \
    -e PUID=1000 \
    -e PGID=1000 \
    -e TZ=Asia/Shanghai \
    -p 8384:8384 \
    -p 21000:22000 \
    -p 21000:22000/udp \
    -p 21027:21027/udp \
    -v $APP_HOME/config:/config \
    --restart unless-stopped \
    -d linuxserver/syncthing:1.23.5