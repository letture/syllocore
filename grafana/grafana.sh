#!/bin/bash


docker run -d \
  --name=grafana \
  -p 3005:3000 \
  --restart unless-stopped \
  grafana/grafana:8.5.27