#!/bin/bash
###
# Bash Script to install docker on CentOS
# Written by kmd
###

## Remove all previous Docker Versions
echo 'Removing all previous versions of Docker'
sudo yum remove docker \
    docker-client \
    docker-client-latest \
    docker-common \
    docker-latest \
    docker-latest-logrotate \
    docker-logrotate \
    docker-engine

## Repo Setup
echo 'Adding Docker Repo'
sudo yum install -y yum-utils
sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo

## Install Docker Engine
echo 'Installing Docker Engine...'
sudo yum install -y docker-ce docker-ce-cli containerd.io

## Start docker
echo 'Starting Docker..'
sudo systemctl start docker

## Check Docker Status
echo 'Check Docker Status'
sudo systemctl status docker