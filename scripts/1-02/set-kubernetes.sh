#!/bin/bash

# Set alias
echo "alias kubectl='microk8s kubectl'" >> ~/.bashrc
. ~/.bashrc

# Set node label
microk8s kubectl label node $HOSTNAME env=vmware

# Check node labels and MicroK8s status
microk8s kubectl get nodes --show-labels
microk8s status