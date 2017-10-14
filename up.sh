#!/usr/bin/env bash

source .env
echo "Creating overlay network"
docker network create --driver=overlay --attachable proxy_network
docker network create --driver=overlay --attachable nats_network

stacks/proxy/up.sh
stacks/nats/up.sh
stacks/ws-tcp-relay/up.sh
