FROM git888.phoenix-5.com:1717/gino/docker/php-fpm

ADD https://github.com/phpDocumentor/phpDocumentor2/releases/download/v2.9.0/phpDocumentor.phar \
    /usr/local/bin/phpdoc
RUN apt-get update && apt-get install -y libssl-dev \
      libxslt-dev \
      graphviz \
      libfreetype6-dev \
      libjpeg62-turbo-dev \
      libmcrypt-dev \
      libpng-dev \
      freetype*
RUN docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/
RUN docker-php-ext-install gd
RUN docker-php-ext-install xsl
RUN pecl install mongodb \
    && docker-php-ext-enable mongodb
RUN pecl install igbinary \
    && docker-php-ext-enable igbinary \
    && echo "session.serialize_handler=igbinary" >> /usr/local/etc/php/conf.d/docker-php-ext-igbinary.ini
RUN pecl install -o -f redis \
    &&  docker-php-ext-enable redis \
    &&  rm -rf /tmp/pear

ADD ./bin/* /usr/local/bin/
ADD php-fpm.conf /usr/local/etc/
RUN rm -f /usr/local/etc/php-fpm.d/*
RUN mkdir -p /var/www/html
RUN cd /usr/local/bin/ && chmod +x *
WORKDIR /var/www/html
ENTRYPOINT ["docker-php-entrypoint"]
CMD ["php-fpm","-R"]
