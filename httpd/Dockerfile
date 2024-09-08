FROM docker.io/httpd:latest
LABEL maintainer="egdoc.dev@gmail.com"

COPY httpd.conf /usr/local/apache2/conf
COPY httpd-vhosts.conf /usr/local/apache2/conf/extra
COPY phpmyadmin-fpm.conf /usr/local/apache2/conf/extra

