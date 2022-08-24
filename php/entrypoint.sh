#!/bin/ash

postfix start

# dockerのイメージが、entrypointによって上書きされたので、再実行してやる
. /usr/local/bin/docker-php-entrypoint php-fpm
