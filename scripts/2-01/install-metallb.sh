#!/bin/bash

version="0.14.9"

microk8s kubectl apply -f charts/oss-metallb/namespace.yaml

microk8s kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v${version}/config/manifests/metallb-native.yaml

# Wait for install
sleep 30

microk8s kubectl apply -f charts/oss-metallb/ipconfig.yaml

echo "Successfully installed MetalLB"