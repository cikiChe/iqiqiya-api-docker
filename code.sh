#!/bin/sh
set -e

cd /var/www/html

apt install -y rename

git clone https://github.com/iqiqiya/iqiqiya-API.git

mkdir -p /var/logs
#/usr/sbin/nginx
php-fpm&

nginx