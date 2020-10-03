FROM ubuntu:20.04 AS builder

ARG DEBIAN_FRONTEND=noninteractive
# can be 1.8.0, 11, 15
ARG JAVA_VERSION=1.8.0 

ADD https://apt.corretto.aws/corretto.key /

RUN apt update -qq -y && \
    apt upgrade -qq -y && \
    apt install -qq -y --no-install-recommends \
    software-properties-common \
    gnupg2 \
    wget && \
    apt-key add corretto.key && \
    add-apt-repository 'deb https://apt.corretto.aws stable main' && \
    apt update -qq -y && \
    apt install -qq -y --no-install-recommends \
    java-${JAVA_VERSION}-amazon-corretto-jdk && \
    rm -rf /var/cache/apt/*

