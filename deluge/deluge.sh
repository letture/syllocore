#!/bin/bash
APP_HOME=/zscloud/cache/app/deluge
mkdir -p $APP_HOME/config
mkdir -p $APP_HOME/downloads

docker run -d --name=deluge \
    -e PUID=1000 \
    -e PGID=1000 \
    -e TZ=Asia/Shanghai \
    -e DELUGE_LOGLEVEL=error `#optional` \
    --restart unless-stopped \
    -p 8112:8112 \
    -p 6881:6881 \
    -p 6881:6881/udp \
    -v $APP_HOME/config:/config \
    -v $APP_HOME/downloads:/downloads \
    linuxserver/deluge:latest
