#!/bin/bash

APP_HOME=/zscloud/cache/app/mongo
mkdir -p $APP_HOME/data/configdb
mkdir -p $APP_HOME/data/db

docker run -d \
  --name=mongodb4 \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Asia/Shanghai \
  -p 27017:27017 \
  -v $APP_HOME/data/configdb:/data/configdb \
  -v $APP_HOME/data/db:/data/db \
  --restart unless-stopped \
  mongo:4.4.22