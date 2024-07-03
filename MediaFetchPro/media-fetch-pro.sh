#!/bin/bash

APP_HOME=/zscloud/cache/app
mkdir -p $APP_HOME/media-fetch-pro/config
mkdir -p $APP_HOME/Media/MediaFetchPro

docker run --name media-fetch-pro \
    -e PUID=1000 \
    -e PGID=1000 \
    -e TZ=Asia/Shanghai \
    -p 7789:7789 \
    -v $APP_HOME/media-fetch-pro/config:/var/opt/config \
    -v $APP_HOME/Media/MediaFetchPro:/var/opt/video \
    --restart unless-stopped \
    -d registry.wh.gpuez.com/syllocore/correctroad/media-fetch-pro:0.3.1