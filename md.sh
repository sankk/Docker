mkdir -p /docker-mount/mariadb/data/mysql
mkdir -p /docker-mount/www
mkdir -p /docker-mount/node8/app
mkdir -p /docker-mount/nginx/logs && mkdir -p /docker-mount/nginx/conf && mdkir -p /docker-mount/nginx/conf/cert
mkdir -p /docker-mount/php
cp ./php/php.ini /docker-mount/php
cp ./nginx/nginx.conf /docker-mount/nginx/
cp ./nginx/cert/* /docker-mount/nginx/conf/cert
cp ./nginx/conf.d/* /docker-mount/nginx/conf/