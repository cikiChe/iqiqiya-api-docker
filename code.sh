#!/bin/sh
set -e

cd /var/www/html

rename 's/docker.conf/docker.conf.bak/' /usr/local/etc/php-fpm.d/*docker.conf

git clone https://github.com/iqiqiya/iqiqiya-API.git

mkdir -p /var/logs
#/usr/sbin/nginx
nginx 

php-fpm