FROM php:8.2-fpm-alpine
ARG xdebug_enabled=false

# # timezone
# ARG TZ=Asia/Tokyo

# RUN apk update && \
#     apk add bash build-base gcc wget git autoconf libmcrypt-dev \
#     g++ make openssl-dev \
#     php82-pdo \
#     php82-openssl \
#     php82-pdo_mysql \
#     php82-mbstring \
#     php82-mysqli

# RUN docker-php-ext-install -j$(nproc) pdo_mysql

# pdo_mysqlを有効化
# RUN docker-php-ext-install -j$(nproc) pdo_mysql
# RUN docker-php-ext-install -j$(nproc) mysqli pdo pdo_mysql

# RUN pecl install mcrypt && \
#     docker-php-ext-enable mcrypt

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
  # php-pdo_mysql \
  libmcrypt-dev \
  build-base \
  autoconf \
  vim

# RUN pecl channel-update pecl.php.net && \
#     pecl install mcrypt-1.0.5 && \
#     docker-php-ext-enable mcrypt

COPY main.cf /etc/postfix/
COPY sasl_passwd /etc/postfix/
RUN /usr/sbin/postmap /etc/postfix/sasl_passwd

RUN docker-php-ext-install -j$(nproc) pdo_mysql

# # ssmtp
# RUN set -eux && \
#   echo ${TZ} > /etc/timezone && \
#   apk add --no-cache ssmtp

# RUN apk add --no-cache \
#     mariadb-connector-c-dev \
#     && docker-php-ext-install php82-pdo_mysql

# RUN apk del mariadb-connector-c-dev

# COPY entrypoint.sh /
# ENTRYPOINT ["sh", "/entrypoint.sh"]
