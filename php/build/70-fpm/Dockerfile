FROM php:7.0-fpm
LABEL maintainer="egdoc.dev@gmail.com"

ARG PHP_FPM_UID=www-data
ARG PHP_FPM_GID=www-data

RUN apt-get update && apt-get install -y \
  libfreetype6-dev \
  libjpeg62-turbo-dev \
  libpng-dev \
  libzip-dev \
  libmcrypt-dev \
    && docker-php-ext-configure gd \
      --with-freetype-dir=/usr/include/ \
      --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install -j$(nproc) pdo pdo_mysql mysqli zip gd mcrypt
