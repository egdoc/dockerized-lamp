FROM httpd:latest
LABEL maintainer="egdoc.dev@gmail.com"

ARG HTTPD_UID=www-data
ARG HTTPD_GID=www-data

COPY httpd.conf /usr/local/apache2/conf
RUN sed -i \
  -e "s/User www-data/User ${HTTPD_UID}/" \
  -e "s/Group www-data/Group ${HTTPD_GID}/" \
  /usr/local/apache2/conf/httpd.conf