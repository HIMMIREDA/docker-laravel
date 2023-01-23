#!/usr/bin/make

SHELL = /bin/sh

HOST_UID := $(shell id -u)
HOST_GID := $(shell id -g)

export HOST_UID
export HOST_GID

create_project:
	docker-compose build --build-arg HOST_UID=$$(id -u) --build-arg HOST_GID=$$(id -g) composer
	docker-compose run --rm composer create-project laravel/laravel .
	docker-compose run --rm --build npm install

start:
	docker-compose up -d --build nginx php mysql

nginx_reload:
	docker-compose exec -it nginx sh -c "nginx -s reload"

stop:
	docker-compose down -v

delete_project:
	rm -rf ./src && mkdir src

artisan:
	docker-compose  run --rm --build artisan $(ARGS)

npm:
	docker-compose run --rm --build npm $(ARGS)

composer:
	docker-compose run --rm --build composer $(ARGS)
