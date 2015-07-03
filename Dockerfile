FROM ubuntu:14.04.2

MAINTAINER Johann du Toity <johann@impulsecloud.com.au>

RUN apt-get update && apt-get install -y \
  build-essential \
  git \
  postgresql-client \
  python \
  python-dev \
  python-setuptools \
  libxml2-dev \
  libxslt1-dev \
  libz-dev \
  libpq-dev \
  sqlite3 && \
  easy_install pip && \
  ln -s /usr/include/freetype2 /usr/include/freetype && \
  apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

