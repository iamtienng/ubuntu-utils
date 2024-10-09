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
    && apt-get clean

CMD ["/bin/bash"]
