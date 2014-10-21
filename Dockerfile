# VERSION 0.1
# DOCKER-VERSION  0.7.3
# AUTHOR:         Sam Alba <sam@docker.com>
# DESCRIPTION:    Image with docker-registry project and dependecies
# TO_BUILD:       docker build -rm -t registry .
# TO_RUN:         docker run -p 5000:5000 registry

# Latest Ubuntu LTS
FROM ubuntu:14.04

# Update
RUN apt-get update
RUN apt-get -y upgrade

# redis
RUN apt-get install -y --force-yes redis-server
ADD redis.conf /etc/redis/redis.conf

# local storage
RUN mkdir -p /var/lib/docker/registry

# Install pip
RUN apt-get -y --force-yes install python-pip

# Install deps for backports.lzma (python2 requires it)
RUN apt-get -y --force-yes install python-dev liblzma-dev libevent1-dev

COPY . /docker-registry
COPY ./config/boto.cfg /etc/boto.cfg

# Install core
RUN pip install --upgrade /docker-registry/depends/docker-registry-core

# Install registry
RUN pip install --upgrade file:///docker-registry#egg=docker-registry[bugsnag,newrelic,cors]

ENV DOCKER_REGISTRY_CONFIG /docker-registry/config/config.yml
ENV SETTINGS_FLAVOR prod

# cleanup
RUN rm -rf /tmp/*
RUN apt-get clean

EXPOSE 5000

cmd service redis-server start && exec docker-registry
