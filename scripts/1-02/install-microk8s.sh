#!/bin/bash

HOSTNAME="ubuntu-temp-vmware"

# Install MicroK8s
sudo snap install microk8s --classic

# Set user permissions
sudo usermod -a -G microk8s austin
sudo chown -R austin ~/.kube

# Set alias
echo "alias kubectl='microk8s kubectl'" >> ~/.bashrc
. ~/.bashrc

# Set node label
microk8s kubectl label node $HOSTNAME env=vmware

# Check node labels and MicroK8s status
microk8s kubectl get nodes --show-labels
microk8s status

# Set new group for command line
newgrp microk8s