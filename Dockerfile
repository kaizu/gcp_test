FROM ubuntu:18.04

COPY . /root/

ENV LC_ALL=C.UTF-8 \
    LANG=C.UTF-8

WORKDIR /root

RUN apt-get update
RUN apt-get install -y git docker.io

RUN apt-get install -y python3 python3-pip \
    && pip3 install --upgrade pip
RUN pip3 install --progress-bar=off -r requirements.txt
