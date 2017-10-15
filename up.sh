#!/usr/bin/env bash
docker-compose up -d --build
sleep 5
docker-compose exec app bin/console security:check
docker-compose exec app bin/console doctrine:schema:update --force
# TODO migrations
