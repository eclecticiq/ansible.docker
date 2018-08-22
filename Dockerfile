FROM alpine

ARG VERSION

RUN apk --no-cache --update add \
  bzip2 \
  gzip \
  libssl1.0 \
  openssh-client \
  python2 \
  py2-pip \
  tar \
  unzip \
  xz

RUN apk --no-cache --update add --virtual .deps \
  gcc \
  libffi-dev \
  linux-headers \
  openssl-dev \
  make \
  musl-dev \
  python2-dev \
  && pip install \
  ansible==$VERSION \
  apache-libcloud \
  boto \
  boto3 \
  cryptography \
  docker-py \
  jmespath \
  packet-python \
  pycrypto \
  shade \
  && apk del .deps

RUN adduser -D ansible

USER ansible
