#!/bin/bash

APP_HOME=/zscloud/cache/app/bazarr
mkdir -p $APP_HOME/config
mkdir -p $APP_HOME/movies
mkdir -p $APP_HOME/tv

docker run -d \
  --name=bazarr \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Asia/Shanghai \
  -p 6767:6767 \
  -v $APP_HOME/config:/config \
  -v $APP_HOME/movies:/movies `#optional` \
  -v $APP_HOME/tv:/tv `#optional` \
  --restart unless-stopped \
  linuxserver/bazarr:latest