FROM ubuntu:latest

MAINTAINER Leonard Marschke <leonard@marschke.me>

#update software repos
RUN apt-get update

#ugrade software
RUN apt-get -y upgrade

RUN apt-get -y install apt-utils

#install some useful tools
RUN apt-get -y install \
        git \
        debootstrap \
        ssh-client

#clean up
RUN apt-get clean

RUN rm -rf /var/lib/apt/lists/*
