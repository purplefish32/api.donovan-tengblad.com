#!/usr/bin/env bash
docker-compose up -d --build
docker-compose run --rm app bin/console security:check
docker-compose run --rm app bin/console doctrine:schema:update --force
# TODO migrations
