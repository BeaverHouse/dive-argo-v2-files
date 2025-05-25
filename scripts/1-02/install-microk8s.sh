#!/bin/bash

HOSTNAME="ubuntu-temp-vmware"

# Install MicroK8s
sudo snap install microk8s --classic

# Set user permissions
sudo mkdir -p ~/.kube
sudo usermod -a -G microk8s austin
sudo chown -R austin ~/.kube

# Set new group for command line
newgrp microk8s