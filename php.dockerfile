FROM php:8.2.1RC1-fpm-alpine3.17
RUN docker-php-ext-install mysqli pdo_mysql && docker-php-ext-enable pdo_mysql