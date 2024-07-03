#!/bin/bash
APP_HOME=/zscloud/cache/app/vocechat
mkdir -p $APP_HOME/home/vocechat-server/data


docker run -d --restart=always -p 3009:3000 \
    -v $APP_HOME/home/vocechat-server/data:/home/vocechat-server/data \
    --name vocechat \
    registry.wh.gpuez.com/syllocore/privoce/vocechat-server:v0.3.33