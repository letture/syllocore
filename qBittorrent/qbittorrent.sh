#!/bin/bash

APP_HOME=/zscloud/cache/app/qbittorrent
mkdir -p $APP_HOME/config
Downloads=/zscloud/cache/app/downloads
mkdir -p $Downloads

docker run --name qbittorrent \
    -e PUID=1000 \
    -e PGID=1000 \
    -e TZ=Asia/Shanghai \
    -e UMASK=002 \
    -p 8181:8080 \
    -v $APP_HOME/config:/config \
    -v $Downloads:/DATA \
    -v /var/run/docker.sock:/var/run/docker.sock \
    --restart unless-stopped \
    -d registry.wh.gpuez.com/syllocore/hotio/qbittorrent:release-4.5.2