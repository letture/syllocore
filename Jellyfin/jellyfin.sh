#!/bin/bash

APP_HOME=/zscloud/cache/app
mkdir -p $APP_HOME/jellyfin/config


docker run --name jellyfin\
    -e PUID=1000 \
    -e PGID=1000 \
    -e TZ=Asia/Shanghai \
    -e AUTO_UPDATE=true \
    -p 8097:8096 \
    -v $APP_HOME/jellyfin/config:/config \
    -v $APP_HOME/Media:/Media  \
    -v /opt/vc/lib:/opt/vc/lib  \
    --restart unless-stopped \
    -d linuxserver/jellyfin:10.8.10