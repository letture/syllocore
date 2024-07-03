#!/bin/bash


docker run -d \
  --name=grafana \
  -p 3005:3000 \
  --restart unless-stopped \
  registry.wh.gpuez.com/syllocore/grafana/grafana:8.5.27