#!/bin/bash

set -e

if [ "$#" -ne 1 ]; then
    version="2.9.1"
else
    version="$1"

FILENAME=libtensorflow-cpu-linux-x86_64-$version.tar.gz
wget -q --no-check-certificate https://storage.googleapis.com/tensorflow/libtensorflow/${FILENAME}
sudo tar -C /usr/local -xzf ${FILENAME}
sudo ldconfig /usr/local/lib
