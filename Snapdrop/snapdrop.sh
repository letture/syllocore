#!/bin/bash

APP_HOME=/zscloud/cache/app/snapdrop
mkdir -p $APP_HOME/config

docker run --name snapdrop \
    -e PUID=1000 \
    -e PGID=1000 \
    -e TZ=Asia/Shanghai \
    -p 89:80 \
    -v $APP_HOME/config:/config \
    --restart unless-stopped \
    -d registry.wh.gpuez.com/linuxserver/snapdrop:version-eac78009