FROM composer:latest

WORKDIR /app

ARG HOST_UID

ARG HOST_GID

RUN addgroup -g ${HOST_GID} laravel && adduser -u ${HOST_UID} -G laravel -s /bin/sh -D  laravel

USER laravel

ENTRYPOINT [ "composer"]