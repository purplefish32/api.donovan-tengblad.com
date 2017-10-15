#!/usr/bin/env bash
docker-compose up -d --build
sleep 5
docker-compose exec -T app bin/console security:check
docker-compose exec -T app bin/console doctrine:schema:update --force
docker-compose exec -T app bin/console cache:clear --env=prod
# TODO migrations
