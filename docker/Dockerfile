FROM ubuntu:16.04

MAINTAINER Yuichi Shiraishi <friend1ws@gmail.com>

RUN apt-get update && apt-get install -y \
    wget \
    bzip2 \
    make \
    gcc \
    zlib1g-dev \
    libbz2-dev \
    liblzma-dev \
    libcurl4-openssl-dev \
    libssl-dev

RUN wget https://github.com/alexdobin/STAR/archive/2.7.0a.tar.gz && \
    tar xzvf 2.7.0a.tar.gz && \
    mv STAR-2.7.0a/bin/Linux_x86_64_static/STAR /usr/local/bin
RUN wget https://github.com/samtools/samtools/releases/download/1.9/samtools-1.9.tar.bz2 && \
    tar jxvf samtools-1.9.tar.bz2 && \
    cd samtools-1.9 && ./configure --without-curses && make && make install

