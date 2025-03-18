FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
  apt-get install -y \
  postgresql-client \
  curl \
  nmap \
  dnsutils \
  net-tools \
  iputils-ping \
  traceroute \
  tcpdump \
  vim \
  htop \
  wget \
  git \
  gnupg \
  unzip \
  tmux \
  jq \
  && apt-get clean

RUN curl -sL https://aka.ms/InstallAzureCLIDeb | bash

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
  unzip awscliv2.zip && \
  ./aws/install && \
  rm -rf awscliv2.zip aws

WORKDIR /root

CMD ["/bin/bash"]
