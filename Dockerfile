FROM ubuntu:18.04

COPY . /root/

ENV LC_ALL=C.UTF-8 \
    LANG=C.UTF-8

WORKDIR /root

RUN apt-get update
RUN apt-get install -y git docker.io
