#!/bin/bash

APP_HOME=/zscloud/cache/app/ddns-go
mkdir -p $APP_HOME/config

docker run -d --name=ddns-go \
    --restart unless-stopped \
    -p 9876:9876 \
    -v $APP_HOME/config:/root \
    jeessy/ddns-go
