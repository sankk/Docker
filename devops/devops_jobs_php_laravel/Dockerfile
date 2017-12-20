FROM git888.phoenix-5.com:1717/gino/docker/php-fpm

RUN apt-get update && apt-get install -y supervisor \
       libssl-dev
RUN pecl install mongodb \
    && docker-php-ext-enable mongodb
RUN pecl install igbinary \
    && docker-php-ext-enable igbinary \
    && echo "session.serialize_handler=igbinary" >> /usr/local/etc/php/conf.d/docker-php-ext-igbinary.ini
RUN pecl install -o -f redis \
    &&  docker-php-ext-enable redis \
    &&  rm -rf /tmp/pear

COPY laravel-worker.conf /etc/supervisor/conf.d/supervisord.conf
ADD php-fpm.conf /usr/local/etc/
ADD ./bin/* /usr/local/bin/
RUN mkdir -p /var/www/html
RUN cd /usr/local/bin/ && chmod +x *
WORKDIR /var/www/html
#CMD ["/usr/bin/supervisord"]
ENTRYPOINT ["docker-php-entrypoint"]
CMD ["php-fpm","-R"]
