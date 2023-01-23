FROM php:8.1-fpm-alpine3.17

RUN docker-php-ext-install pdo pdo_mysql
