FROM ubuntu:xenial

ENV DEBIAN_FRONTEND noninteractive
ENV LC_ALL en_US.UTF-8

# Install packages
RUN apt-get update && \
    apt-get install -y php7.0 && \
    apt-get autoremove -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

VOLUME ["/data"]
WORKDIR /data