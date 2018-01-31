FROM alpine:3.7

ENV ANSIBLE_VERSION 2.2.3.0

RUN apk --no-cache --update add python2 py2-pip

RUN apk --no-cache --update add --virtual .deps \
  gcc \
  libffi-dev \
  linux-headers \
  openssl-dev \
  make \
  musl-dev \
  python2-dev \
  && pip install \
  ansible==$ANSIBLE_VERSION \
  apache-libcloud \
  boto \
  boto3 \
  cryptography \
  docker-py \
  pycrypto \
  shade \
  && apk del .deps
