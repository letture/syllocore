#!/bin/bash

APP_HOME=/zscloud/cache/app/tvheadend

mkdir -p $APP_HOME/data
mkdir -p $APP_HOME/recordings

docker run -d \
  --name=tvheadend \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Etc/UTC \
  -e RUN_OPTS= `#optional` \
  -p 9981:9981 \
  -p 9982:9982 \
  -v $APP_HOME/data:/config \
  -v $APP_HOME/recordings:/recordings \
  --restart unless-stopped \
  registry.wh.gpuez.com/linuxserver/tvheadend:latest