#!/bin/bash

echo 'Duration of first request'
curl -o /dev/null -s -w 'Total Time: %{time_total}s\n' 'http://localhost:8080/helloDoc/users'

echo 'Duration of second request'
curl -o /dev/null -s -w 'Total Time: %{time_total}s\n' 'http://localhost:8080/helloDoc/users'
