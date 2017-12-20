FROM php:7.1.8-fpm

RUN echo "deb http://ftp.de.debian.org/debian stretch main" >> /etc/apt/sources.list
RUN apt-get update && apt-get install -y \
    --assume-yes apt-utils \
    zlib1g-dev \
    git \
    wget

RUN docker-php-ext-install pdo_mysql \
    && docker-php-ext-install mysqli \
    && docker-php-ext-install zip

RUN cd /usr/local/bin && curl -sS https://getcomposer.org/installer | php \
    && mv composer.phar composer
RUN mkdir -p /var/log/php
RUN mkdir -p /usr/share/nginx/html

ADD php.ini /usr/local/etc/php/php.ini
ADD php-fpm.conf /usr/local/etc/php-fpm.conf
WORKDIR /usr/share/nginx/html
RUN usermod -u 1000 www-data

## install laravel Start
RUN set -x \
    && \
    composer global require "laravel/installer"

RUN cd /usr/local/bin && ln -s /root/.composer/vendor/laravel/installer/laravel laravel

EXPOSE 9000
