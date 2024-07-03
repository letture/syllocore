#!/bin/bash

APP_HOME=/zscloud/cache/app/
mkdir -p $APP_HOME/memos/memos

docker run --name memos \
    -e PUID=1000 \
    -e PGID=1000 \
    -e TZ=Asia/Shanghai \
    -p 5230:5230 \
    -v $APP_HOME/memos/memos:/var/opt/memos \
    --restart unless-stopped \
    -d registry.wh.gpuez.com/syllocore/neosmemo/memos:0.15.0