FROM alpine

WORKDIR /home/clang
RUN set -x && \
    apk add --no-cache gcc libc-dev g++

CMD ["/bin/sh"]