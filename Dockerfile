FROM jenkins/jnlp-slave:latest

ARG DOCKER_VERSION=17.06.2~ce-0~debian
ARG DC_VERSION=1.18.0

USER root

RUN apt-get update && \
    apt-get install -qq -y --no-install-recommends \
      apt-transport-https \
      ca-certificates \
      curl \
      gnupg2 \
      software-properties-common && \   
    curl -fsSL get.docker.com -o get-docker.sh && \
    sh get-docker.sh && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
