#!/bin/bash

docker compose exec -T shard1 mongosh --port "27018"<<EOF
rs.initiate(
    {
      _id : "shard1",
      members: [
        { _id : 1, host : "shard1:27018" },
        { _id : 2, host : "shard1-repl:27028" }
      ]
    }
);
exit();
EOF

docker compose exec -T shard2 mongosh --port "27019"<<EOF
rs.initiate(
    {
      _id : "shard2",
      members: [
        { _id : 3, host : "shard2:27019" },
        { _id : 4, host : "shard2-repl:27029" }
      ]
    }
);
exit();
EOF
