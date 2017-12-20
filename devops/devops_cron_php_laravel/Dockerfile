FROM git888.phoenix-5.com:1717/gino/docker/php-fpm

RUN apt-get update && apt-get install -y cron \
      libssl-dev
RUN pecl install mongodb \
    && docker-php-ext-enable mongodb
RUN pecl install igbinary \
    && docker-php-ext-enable igbinary \
    && echo "session.serialize_handler=igbinary" >> /usr/local/etc/php/conf.d/docker-php-ext-igbinary.ini
RUN pecl install -o -f redis \
    &&  docker-php-ext-enable redis \
    &&  rm -rf /tmp/pear

ADD php-fpm.conf /usr/local/etc/
COPY artisan-cron /etc/cron.d/artisan-cron
ADD ./bin/* /usr/local/bin/
RUN mkdir -p /var/www/html
RUN cd /usr/local/bin/ && chmod +x *
WORKDIR /var/www/html
RUN crontab /etc/cron.d/artisan-cron
ENTRYPOINT ["docker-php-entrypoint"]
CMD ["php-fpm","-R"]
#CMD ["cron", "-f"]
#ENTRYPOINT cron -f
#ENTRYPOINT /usr/local/bin/docker-entrypoint.sh
