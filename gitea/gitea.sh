#!/bin/bash
APP_HOME=/zscloud/cache/app/gitea
mkdir -p $APP_HOME/data

docker run -d \
  --name=gitea \
  -e USER_GID=1000 \
  -e USER_UID=1000 \
  -p 3006:3000 \
  -p 222:22 \
  -v $APP_HOME/data:/data \
  --restart unless-stopped \
  registry.wh.gpuez.com/syllocore/gitea/gitea:1.19.3