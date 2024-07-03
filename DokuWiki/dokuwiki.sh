#!/bin/bash

APP_HOME=/zscloud/cache/app/dokuwiki
mkdir -p $APP_HOME/config

docker run -d \
  --name=dokuwiki \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Asia/Shanghai \
  -p 8089:80 \
  -v $APP_HOME/config:/config \
  --restart unless-stopped \
  registry.wh.gpuez.com/syllocore/linuxserver/dokuwiki:latest