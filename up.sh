#!/usr/bin/env bash

source .env

echo "Creating overlay network"
docker network create --driver=overlay --attachable proxy_network

stacks/proxy/up.sh
stacks/root/up.sh
