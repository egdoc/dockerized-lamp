FROM httpd:latest
LABEL maintainer="egdoc.dev@gmail.com"

RUN apt-get update && apt-get install -y mariadb-client
COPY httpd.conf /usr/local/apache2/conf
COPY httpd-vhosts.conf /usr/local/apache2/conf/extra
COPY phpmyadmin-fpm.conf /usr/local/apache2/conf/extra

