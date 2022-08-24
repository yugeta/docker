FROM php:8.1-fpm-alpine

RUN apk update && \
  apk add --update --no-cache \
  libjpeg-turbo-dev \
  libwebp-dev \
  libpng-dev

RUN docker-php-ext-configure gd --with-jpeg
RUN docker-php-ext-install -j$(nproc) gd

RUN apk update && \
  apk add -u busybox && \
  apk add --update --no-cache \
  syslog-ng \
  cyrus-sasl \
  postfix \
  vim

COPY main.cf /etc/postfix/
COPY sasl_passwd /etc/postfix/
RUN /usr/sbin/postmap /etc/postfix/sasl_passwd

COPY entrypoint.sh /
ENTRYPOINT ["sh", "/entrypoint.sh"]
