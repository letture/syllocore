#!/bin/bash

APP_HOME=/zscloud/cache/app/duplicati
mkdir -p $APP_HOME/appdata/config
mkdir -p $APP_HOME/backups
mkdir -p $APP_HOME/source

docker run -d \
  --name=duplicati \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Asia/Shanghai \
  -e CLI_ARGS= `#optional` \
  -p 8200:8200 \
  -v $APP_HOME/appdata/config:/config \
  -v $APP_HOME/backups:/backups \
  -v $APP_HOME/source:/source \
  --restart unless-stopped \
  registry.wh.gpuez.com/syllocore/linuxserver/duplicati:latest