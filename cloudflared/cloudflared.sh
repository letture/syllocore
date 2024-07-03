#!/bin/bash

APP_HOME=/zscloud/cache/app/cloudflared
mkdir -p $APP_HOME/config

docker run -d --name cloudflared \
 --restart unless-stopped \
 -p 14333:14333 \
 -v $APP_HOME/config:/config \
 --network host registry.wh.gpuez.com/syllocore/wisdomsky/cloudflared-web:latest


