FROM ubuntu:16.04

MAINTAINER Johann du Toit <johann@winkreports.com>

RUN apt-get update && apt-get install -y \
  build-essential \
  curl \
  fontconfig \
  git \
  ghostscript \
  libffi-dev \
  libfontconfig1 \
  libfreetype6 \
  libfreetype6-dev \
  libjpeg-turbo8 \
  libjpeg8-dev \
  liblcms2-dev \
  libpng12-0 \
  libpq-dev \
  libssl-dev \
  libwebp-dev \
  libxml2-dev \
  libxrender1 \
  libxslt1-dev \
  libtiff5-dev \
  libz-dev \
  postgresql-client \
  python3-dev \
  python3-pip \
  python3-setuptools \
  python3-tk \
  sqlite3 \
  sudo \
  tcl8.6-dev \
  tk8.6-dev \
  wget \
  xfonts-base \
  xfonts-75dpi \
  zlib1g-dev && \
  ln -s /usr/include/freetype2 /usr/include/freetype && \
  locale-gen en_US.UTF-8 && \
  wget --quiet -O /tmp/wkhtmltox.deb http://download.gna.org/wkhtmltopdf/0.12/0.12.2.1/wkhtmltox-0.12.2.1_linux-trusty-amd64.deb && \
  dpkg -i /tmp/wkhtmltox.deb && \
  pip3 install numpy && \
  apt-get install -f -y && \
  apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Set the locale
ENV LANG en_US.UTF-8  
ENV LANGUAGE en_US:en  
ENV LC_ALL en_US.UTF-8  
