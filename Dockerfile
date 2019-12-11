FROM ubuntu:18.04
MAINTAINER Ben <ben@chintech.com.cn>

ENV LANG C.UTF-8

RUN set -x; \
            chmod 777 /etc/apt/sources.list \
            && echo "deb http://mirrors.163.com/ubuntu/ bionic main restricted universe multiverse\ndeb http://mirrors.163.com/ubuntu/ bionic-security main restricted universe multiverse \ndeb http://mirrors.163.com/ubuntu/ bionic-updates main restricted universe multiverse \ndeb http://mirrors.163.com/ubuntu/ bionic-proposed main restricted universe multiverse \ndeb http://mirrors.163.com/ubuntu/ bionic-backports main restricted universe multiverse \ndeb-src http://mirrors.163.com/ubuntu/ bionic main restricted universe multiverse \ndeb-src http://mirrors.163.com/ubuntu/ bionic-security main restricted universe multiverse \ndeb-src http://mirrors.163.com/ubuntu/ bionic-updates main restricted universe multiverse \ndeb-src http://mirrors.163.com/ubuntu/ bionic-proposed main restricted universe multiverse \ndeb-src http://mirrors.163.com/ubuntu/ bionic-backports main restricted universe multiverse \n" > /etc/apt/sources.list \
            && chmod 440 /etc/apt/sources.list \
            && apt-get update \
            && apt-get upgrade -y\
            && apt-get install -y --no-install-recommends \
            git \
            vim \
        && rm -rf /var/lib/apt/lists/*

RUN set -x; \
            apt-get update \
            && apt-get install -y --no-install-recommends \
            && inetutils-ping \
            && rm -rf /var/lib/apt/lists/*
 
