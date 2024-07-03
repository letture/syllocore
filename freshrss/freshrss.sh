#!/bin/bash

APP_HOME=/zscloud/cache/app/freshrss
mkdir -p $APP_HOME/data

docker run -d \
  --name=freshrss \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Asia/Shanghai \
  -p 8081:80 \
  -v $APP_HOME/data:/config \
  --restart unless-stopped \
  registry.wh.gpuez.com/syllocore/linuxserver/freshrss:latest