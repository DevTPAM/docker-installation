#!/bin/bash

#Author: Ange
#Date: 07/18/2022
#Description: This is a script to install docker in centos/7


# 1. Uninstall old version of docker

sudo yum remove docker docker-client docker-client-latest docker-common docker-latest docker-latest-logrotate docker-logrotate docker-engine

# 2. Add docker repository to Yum package manage

sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

# 3. Install Docker engine

sudo yum install docker-ce docker-ce-cli containerd.io

# Start and enable Docker service

sudo systemctl start docker
sudo systemctl enable docker