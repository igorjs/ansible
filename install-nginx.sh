#!/bin/bash

sudo mkdir -p /usr/local/src
cd /usr/local/src

curl -O https://ftp.pcre.org/pub/pcre/pcre-8.40.tar.gz
tar xzvf pcre-8.40.tar.gz
cd pcre-8.40
./configure --prefix=/usr/local
make && sudo make install && make clean

cd ..

curl -O http://nginx.org/download/nginx-1.10.3.tar.gz
tar xzvf nginx-1.10.3.tar.gz
cd nginx-1.10.3
./configure --prefix=/usr/local --with-http_ssl_module
make && sudo make install && make clean

# start nginx
sudo nginx
