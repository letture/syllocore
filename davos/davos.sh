#!/bin/bash

APP_HOME=/zscloud/cache/app/davos

mkdir -p $APP_HOME/data
Downloads=/zscloud/cache/app/downloads
mkdir -p $Downloads/folder

docker run -d \
  --name=davos \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Asia/Shanghai \
  -p 8082:8080 \
  -v $APP_HOME/data:/config \
  -v $Downloads/folder:/download \
  --restart unless-stopped \
  registry.wh.gpuez.com/syllocore/linuxserver/davos:latest