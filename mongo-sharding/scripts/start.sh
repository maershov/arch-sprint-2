#!/bin/bash

docker-compose up -d
sleep 5s
echo 'START INIT CONFIG'
./scripts/init-config.sh
sleep 5s
echo 'START INIT SHARDS'
./scripts/init-shards.sh
sleep 5s
echo 'START INIT ROUTER'
./scripts/init-router-and-fill-db.sh
sleep 5s
echo 'CHECK SHARDS'
./scripts/check-shards.sh
