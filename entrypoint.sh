#!/bin/bash

dockerize \
	-wait tcp://${DB_HOST:-mysql}:${DB_PORT:-3306} \
    -timeout 30s

cp config/database-docker.yml config/database.yml

bin/rails db:migrate

rails s -b 0.0.0.0