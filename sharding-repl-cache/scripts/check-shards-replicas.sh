#!/bin/bash

docker compose exec -T shard1 mongosh --port "27018"<<EOF
use somedb;
db.helloDoc.countDocuments();
EOF

docker compose exec -T shard1-repl mongosh --port "27028"<<EOF
use somedb;
db.helloDoc.countDocuments();
EOF

docker compose exec -T shard2 mongosh --port "27019"<<EOF
use somedb;
db.helloDoc.countDocuments();
EOF

docker compose exec -T shard2-repl mongosh --port "27029"<<EOF
use somedb;
db.helloDoc.countDocuments();
EOF
