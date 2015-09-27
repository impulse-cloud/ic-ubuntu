FROM ubuntu:15.04

MAINTAINER Johann du Toity <johann@impulsecloud.com.au>

RUN apt-get update && apt-get install -y \
  build-essential \
  curl \
  git \
  postgresql-client \
  python \
  python-dev \
  python-setuptools \
  libxml2-dev \
  libxslt1-dev \
  libz-dev \
  libpq-dev \
  sqlite3 \ 
  wget \
  fontconfig \
  libfontconfig1 \
  libfreetype6 \
  libpng12-0 \
  libjpeg-turbo8 \
  libxrender1 \
  xfonts-base \
  xfonts-75dpi && \
  easy_install pip && \
  ln -s /usr/include/freetype2 /usr/include/freetype && \
  locale-gen en_US.UTF-8 && \
  wget --quiet -O /tmp/wkhtmltox.deb http://download.gna.org/wkhtmltopdf/0.12/0.12.2.1/wkhtmltox-0.12.2.1_linux-trusty-amd64.deb && \
  dpkg -i /tmp/wkhtmltox.deb && \
  apt-get install -f -y && \
  apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Set the locale
ENV LANG en_US.UTF-8  
ENV LANGUAGE en_US:en  
ENV LC_ALL en_US.UTF-8  
