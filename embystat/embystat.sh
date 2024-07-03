#!/bin/bash

APP_HOME=/zscloud/cache/app/embystat
mkdir -p $APP_HOME/config

docker run -d \
  --name=embystat \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Asia/Shanghai \
  -p 6555:6555 \
  -v $APP_HOME/config:/config \
  --restart unless-stopped \
  registry.wh.gpuez.com/syllocore/linuxserver/embystat:latest