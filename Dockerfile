FROM php:7.3.30-fpm 
LABEL maintainer="466934322@qq.com"

RUN apt-get install -y nginx git  zip libzip-dev \
  && docker-php-ext-configure zip --with-libzip \
  && docker-php-ext-install zip

COPY code.sh /code.sh

RUN set -x; chmod +x /code.sh 

CMD [  "/code.sh" ]


