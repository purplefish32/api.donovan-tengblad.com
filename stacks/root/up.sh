#!/usr/bin/env bash
parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
cd "$parent_path"
env $(cat ../../.env | grep ^[A-Z] | xargs) docker-compose up --build -d
