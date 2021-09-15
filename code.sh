#!/bin/sh
set -e

cd /var/www/html

mkdir iqiqiya
git clone https://github.com/iqiqiya/iqiqiya-API.git iqiqiya


chown -R www-data:www-data iqiqiya
chmod -R 0755 iqiqiya