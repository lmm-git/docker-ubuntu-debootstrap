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
        parted \
        zstd \
        btrfs-progs \
        ssh-client \
        curl \
        squashfs-tools \
        genisoimage \
        memtest86+ \
        live-build \
        xorriso \
        isolinux \
        syslinux-efi \
        grub-pc-bin \
        grub-efi-amd64-bin \
        mtools \
        dosfstools \
#clean up
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
