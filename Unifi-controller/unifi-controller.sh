#!/bin/bash

APP_HOME=/zscloud/cache/app/unifi-controller
mkdir -p $APP_HOME/config

docker run -d \
  --name=unifi-controller \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Etc/UTC \
  -e MEM_LIMIT=1024 `#optional` \
  -e MEM_STARTUP=1024 `#optional` \
  -p 8443:8443 \
  -p 3478:3478/udp \
  -p 10001:10001/udp \
  -p 8080:8080 \
  -p 1900:1900/udp `#optional` \
  -p 8843:8843 `#optional` \
  -p 8880:8880 `#optional` \
  -p 6789:6789 `#optional` \
  -p 5514:5514/udp `#optional` \
  -v $APP_HOME/config:/config \
  --restart unless-stopped \
  linuxserver/unifi-controller:latest