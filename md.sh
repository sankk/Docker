mkdir -p /docker/dd/mariadb/data/mysql
mkdir -p /dockeri/dd/www
mkdir -p /docker/dd/node8/app
mkdir -p /docker/dd/nginx/logs && mkdir -p /docker/dd/nginx/conf && mdkir -p /docker/dd/nginx/conf/cert
mkdir -p /docker/dd/php
cp ./php/php.ini /docker/dd/php
cp ./nginx/nginx.conf /docker/dd/nginx/
cp ./nginx/cert/* /docker/dd/nginx/conf/cert
cp ./nginx/conf.d/* /docker/dd/nginx/conf/
