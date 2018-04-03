mkdir -p /docker-mount/mariadb/data/mysql
mkdir -p /docker-mount/mariadb/docker-entrypoint-initdb.d
mkdir -p /docker-mount/www
mkdir -p /docker-mount/redis/data
mkdir -p /docker-mount/node8/app
mkdir -p /docker-mount/nginx/logs && mkdir -p /docker-mount/nginx/conf && mkdir -p /docker-mount/nginx/conf/cert
mkdir -p /docker-mount/php && mkdir -p /docker-mount/php/logs
mkdir -p /docker-mount/cron && touch /docker-mount/cron/cron.log
mkdir -p /docker-mount/jobs/conf.d && mkdir -p /docker-mount/jobs/logs
#groupadd -g 33 www-data && useradd -s /sbin/nologin -d /home/www-data www-data -g www-data
cp ./php/php.ini /docker-mount/php
cp ./devops/nginx/nginx.conf /docker-mount/nginx/
cp ./devops/nginx/cert/* /docker-mount/nginx/conf/cert/
cp ./devops/nginx/conf.d/* /docker-mount/nginx/conf/
cp ./devops/node8/app/* /docker-mount/node8/app/
cp 0schema.sql /docker-mount/mariadb/docker-entrypoint-initdb.d/
#chown -R www-data:www-data /docker-mount/www
