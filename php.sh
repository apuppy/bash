#!/bin/bash
yum install autoconf libtool mhash libmcrypt libmcrypt-devel openssl openssl-devel libxml2 libxml2-devel curl pcre pcre-devel zlib zlib-devel
./configure --prefix=/usr/local/php \
    --with-mysql=mysqlnd \
    --with-mysqli=mysqlnd \
    --with-pdo-mysql=mysqlnd \
    --enable-fpm \
    --enable-mbstring \
    --with-iconv \
    --with-mcrypt \
    --with-openssl \
    --enable-sockets \
    --enable-pcntl \
    --with-mhash \
    --with-curl \
    --with-zlib
make
make install
