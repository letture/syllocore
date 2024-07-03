#!/bin/bash

APP_HOME=/zscloud/cache/app/wikijs
mkdir -p $APP_HOME/config
mkdir -p $APP_HOME/data

docker run -d \
  --name=wikijs \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Asia/Shanghai \
  -e DB_TYPE=sqlite `#optional` \
  -e DB_HOST= `#optional` \
  -e DB_PORT= `#optional` \
  -e DB_NAME= `#optional` \
  -e DB_USER= `#optional` \
  -e DB_PASS= `#optional` \
  -p 3001:3000 \
  -v $APP_HOME/config:/config \
  -v $APP_HOME/data:/data \
  --restart unless-stopped \
  registry.wh.gpuez.com/linuxserver/wikijs:latest