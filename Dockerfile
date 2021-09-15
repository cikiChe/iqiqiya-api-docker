FROM php:7.3-fpm-alpine3.13
LABEL maintainer="466934322@qq.com"

RUN apk --update --no-cache add nginx git unzip wget curl-dev libpng-dev zlib-dev libzip-dev && \
  docker-php-ext-install  pdo_mysql bcmath zip --with-libzip \
  && docker-php-ext-install zip

COPY code.sh /code.sh

RUN set -x; chmod +x /code.sh 

CMD [  "/code.sh" ]

