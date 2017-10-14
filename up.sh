#!/usr/bin/env bash

echo "Creating overlay network"
docker network create --driver=overlay --attachable proxy_network

stacks/proxy/up.sh
stacks/nats/up.sh
stacks/ws-tcp-relay/up.sh
stacks/api/up.sh
