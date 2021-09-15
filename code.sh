#!/bin/sh
set -e

cd /var/www/html


git clone https://github.com/iqiqiya/iqiqiya-API.git

mkdir -p /var/logs
#/usr/sbin/nginx
nginx 

php-fpm