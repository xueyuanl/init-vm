#!/bin/bash

sudo apt-get -y update
sudo apt-get install -y openssh-server openssh-client screen git curl wget npm net-tools vim make gcc libc-dev

#install docker
#Install packages to allow apt to use a repository over HTTPS:
sudo apt-get install -y apt-transport-https \
     			ca-certificates \
     			curl \
     			gnupg-agent \
     			software-properties-common
#Add Docker's official GPG key:
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

#set up the stable repository
sudo add-apt-repository \
   			"deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   			$(lsb_release -cs) \
   			stable"
#Install the latest version of Docker CE and containerd
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io

sudo apt-get autoremove
sudo apt-get clean
