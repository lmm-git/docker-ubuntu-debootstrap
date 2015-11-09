FROM ubuntu:latest

MAINTAINER Leonard Marschke <leonard@marschke.me>

#update software repos
RUN apt-get update \

#ugrade software
    && apt-get -y upgrade \

    && apt-get -y install apt-utils \

#install some useful tools
    && apt-get -y install \
        git \
        debootstrap \
        ssh-client \
        curl \

#clean up
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
