FROM php-fpm

## 安裝 laravel Start
RUN set -x \
    && \
    composer global require "laravel/installer" 
    
## 安裝 laravel End

#COPY resources/docker-entrypoint.sh /
#COPY resources/bin /usr/local/bin

#ENTRYPOINT ["/docker-entrypoint.sh"]

#CMD ["php-fpm", "-R"]