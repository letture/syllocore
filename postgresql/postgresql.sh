#!/bin/bash

APP_HOME=/zscloud/cache/app/postgresql
mkdir -p $APP_HOME/data

docker run -d \
  --name=postgresql \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Asia/Shanghai \
  -e POSTGRES_USER=syllocore \
  -e POSTGRES_PASSWORD=syllocore \
  -e POSTGRES_DB=syllocore \
  -p 5432:5432 \
  -v $APP_HOME/data:/var/lib/postgresql/data \
  --restart unless-stopped \
  postgres:15.3