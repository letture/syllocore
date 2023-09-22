#!/bin/bash

APP_HOME=/zscloud/cache/app
mkdir -p $APP_HOME/bazarr/config
mkdir -p $APP_HOME/Media/movies
mkdir -p $APP_HOME/Media/tv

docker run -d \
  --name=bazarr \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Asia/Shanghai \
  -p 6767:6767 \
  -v $APP_HOME/bazarr/config:/config \
  -v $APP_HOME/Media/movies:/movies `#optional` \
  -v $APP_HOME/Media/tv:/tv `#optional` \
  --restart unless-stopped \
  linuxserver/bazarr:latest