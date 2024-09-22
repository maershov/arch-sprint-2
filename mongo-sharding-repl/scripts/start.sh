#!/bin/bash

docker-compose up -d
sleep 5s
echo 'START INIT CONFIG'
./scripts/init-config.sh
sleep 5s
echo 'START INIT SHARDS AND REPLICAS'
./scripts/init-shards-replicas.sh
sleep 5s
echo 'START INIT ROUTER'
./scripts/init-router-and-fill-db.sh
sleep 5s
echo 'CHECK SHARDS AND REPLICAS'
./scripts/check-shards-replicas.sh
