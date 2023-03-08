FROM php:7.4-fpm-alpine
RUN docker-php-ext-install mysqli pdo_mysql && docker-php-ext-enable pdo_mysql && \
    apk add --update nginx 
CMD ["nginx", "-g", "daemon off;"]
# RUN adduser -D -s /sbin/nologin nginx ; adduser nginx www-data
#RUN useradd -m -s /usr/sbin/nologin nginx && RUN usermod -a -G www-data nginx