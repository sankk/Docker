#!/bin/sh

if [ -z ${PROJECT_NAME} ]; then
  PROJECT_NAME='project'
fi

ROOT_PATH="/var/www/html"
cd ${ROOT_PATH}
if [ ! -e artisan ]; then
  ~/.composer/vendor/bin/laravel new --dev --force .
else 
  composer install
fi

exec "$@"