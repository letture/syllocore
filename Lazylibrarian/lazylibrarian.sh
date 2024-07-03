#!/bin/bash

APP_HOME=/zscloud/cache/app/lazylibrarian
mkdir -p $APP_HOME/config
BOOK=/zscloud/cache/app/book
mkdir -p $BOOK
Downloads=/zscloud/cache/app/downloads
mkdir -p $Downloads

docker run --name lazylibrarian\
    -e PUID=1000 \
    -e PGID=1000 \
    -e TZ=Asia/Shanghai \
    -p 5299:5299 \
    -v $APP_HOME/config:/config \
    -v $BOOK:/books \
    -v $Downloads:/downloads \
    --restart unless-stopped \
    -d registry.wh.gpuez.com/syllocore/linuxserver/lazylibrarian:version-a7d5948a