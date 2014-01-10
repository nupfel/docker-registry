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
run apt-get install -y redis-server
add redis.conf /etc/redis/redis.conf

# local storage
run mkdir -p /var/lib/docker/registry

# cleanup
RUN rm -rf /tmp/*
apt-get clean

# Install pip
RUN apt-get -y install python-pip

# Install deps for backports.lzma (python2 requires it)
RUN apt-get -y install python-dev liblzma-dev libevent1-dev

COPY . /docker-registry
COPY ./config/boto.cfg /etc/boto.cfg

# Install core
RUN pip install /docker-registry/depends/docker-registry-core

# Install registry
RUN pip install file:///docker-registry#egg=docker-registry[bugsnag,newrelic,cors]

env DOCKER_REGISTRY_CONFIG /docker-registry/config/config.yml
env SETTINGS_FLAVOR prod

EXPOSE 5000

cmd exec service redis-server start && docker-registry
