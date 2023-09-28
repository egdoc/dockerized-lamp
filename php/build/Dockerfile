ARG PHP_VERSION=7.4-fpm
FROM docker.io/php:"${PHP_VERSION}" AS base
LABEL maintainer="egdoc.dev@gmail.com"
RUN apt-get update && apt-get install -y \
  libfreetype6-dev \
  libjpeg62-turbo-dev \
  libpng-dev \
  libzip-dev \
  libwebp-dev \
  zlib1g-dev \
  libicu-dev \
  g++
RUN docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp
RUN docker-php-ext-configure intl
RUN docker-php-ext-install -j$(nproc) pdo pdo_mysql mysqli zip gd intl

FROM base AS php7.4-fpm
RUN apt-get update && apt-get install -y libmcrypt-dev \
  && echo | pecl install mcrypt-1.0.6 \
  && docker-php-ext-enable mcrypt

FROM base AS php8.0-fpm
FROM base AS php8.1-fpm 
FROM base AS php8.2-fpm

FROM "php${PHP_VERSION}" AS post
COPY php.ini /usr/local/etc/php/conf.d/php.ini
