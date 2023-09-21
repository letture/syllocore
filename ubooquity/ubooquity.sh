#!/bin/bash

APP_HOME=/zscloud/cache/app/ubooquity
mkdir -p $APP_HOME/data
mkdir -p $APP_HOME/books
mkdir -p $APP_HOME/comics
mkdir -p $APP_HOME/raw/files

docker run -d \
  --name=ubooquity \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Asia/Shanghai \
  -e MAXMEM= \
  -p 2202:2202 \
  -p 2203:2203 \
  -v $APP_HOME/data:/config \
  -v $APP_HOME/books:/books \
  -v $APP_HOME/comics:/comics \
  -v $APP_HOME/raw/files:/files \
  --restart unless-stopped \
  linuxserver/ubooquity:latest