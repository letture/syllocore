#!/bin/bash

APP_HOME=/zscloud/cache/app/adguardhome
mkdir -p $APP_HOME/workdir
mkdir -p $APP_HOME/confdir

docker run --name adguardhome\
    --restart unless-stopped\
    -v $APP_HOME/workdir:/opt/adguardhome/work\
    -v $APP_HOME/confdir:/opt/adguardhome/conf\
    -p 53:53/tcp -p 53:53/udp\
    -p 67:67/udp -p 68:68/udp\
    -p 3003:3000/tcp\
    -p 853:853/tcp\
    -p 784:784/udp -p 853:853/udp -p 8853:8853/udp\
    -p 5443:5443/tcp -p 5443:5443/udp\
    -d registry.wh.gpuez.com/syllocore/adguard/adguardhome:v0.107.32