FROM php:7.1.8-fpm
RUN apt-get update

RUN docker-php-ext-install pdo_mysql \
    && docker-php-ext-install mysqli 
RUN cd /usr/local/bin && curl -sS https://getcomposer.org/installer | php \
    && mv composer.phar composer

ADD php.ini /usr/local/etc/php/php.ini
ADD php-fpm.conf /usr/local/etc/php-fpm.conf
WORKDIR /var/www
RUN usermod -u 1000 www-data
EXPOSE 9000
