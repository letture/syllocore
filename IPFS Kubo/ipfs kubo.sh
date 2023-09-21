#!/bin/bash

APP_HOME=/zscloud/cache/app/kubo

mkdir -p $APP_HOME/somewhere/
mkdir -p $APP_HOME/somewhere_else/

docker run -d \
 --name ipfs_host \
 -v $APP_HOME/somewhere/:/export \
 -v $APP_HOME/somewhere_else/:/data/ipfs \
 -p 4001:4001 \
 -p 4001:4001/udp \
 -p 8084:8080 \
 -p 5001:5001 \
 ipfs/kubo:latest