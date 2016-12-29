FROM snapcore/snapcraft:latest
MAINTAINER tools@docker.com

WORKDIR /snap
VOLUME /snap

ENV DEBIAN_FRONTEND noninteractive
ENV GNUPGHOME /root/.snap/gnupg

RUN apt update \
  && apt install -y \
    snapd \
    gnupg2 \
  && apt clean \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
