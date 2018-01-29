FROM alpine

RUN apk --no-cache --update add python2 py2-pip

RUN apk --no-cache --update add --virtual .deps \
  gcc \
  libffi-dev \
  linux-headers \
  openssl-dev \
  make \
  musl-dev \
  python2-dev \
  && pip install ansible \
  && apk del .deps
