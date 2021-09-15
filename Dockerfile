FROM php:7.3.30-fpm 
LABEL maintainer="466934322@qq.com"

RUN apk --update --no-cache add nginx git unzip wget curl-dev libcurl && \
  docker-php-ext-install  pdo_mysql bcmath zip

COPY code.sh /code.sh

RUN set -x; chmod +x /code.sh 

CMD [  "/code.sh" ]


