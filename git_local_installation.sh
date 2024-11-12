#!/bin/bash

wget https://curl.haxx.se/download/curl-8.11.0.tar.gz
tar -xf curl-8.11.0.tar.gz
cd curl-8.11.0
./configure --prefix=$HOME/local
make
make install

wget http://downloads.sourceforge.net/expat/expat-2.6.4.tar.gz
tar -xf expat-2.6.4.tar.gz
cd expat-2.6.4
./configure --prefix=$HOME/local
make
make install

wget https://github.com/git/git/archive/v2.8.0.tar.gz
tar -xf v2.8.0
cd git-2.8.0
make configure
./configure --prefix=$HOME/local --with-curl=$HOME/local/curl --with-expat=$HOME/local/expat
make
make install
