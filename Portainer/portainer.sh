#!/bin/bash

APP_HOME=/zscloud/cache/app/portainer
mkdir -p $APP_HOME

docker run --name portainer \
    -p 8003:8000 \
    -p 9001:9000 \
    -p 9443:9443 \
    -v $APP_HOME:/data \
    -v /var/run/docker.sock:/var/run/docker.sock \
    --restart unless-stopped \
    -d portainer/portainer-ce:2.18.4