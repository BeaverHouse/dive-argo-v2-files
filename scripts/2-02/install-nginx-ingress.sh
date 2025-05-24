#!/bin/bash

version="4.12.2"

helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
helm repo update

helm upgrade --install ingress-nginx ingress-nginx/ingress-nginx --namespace ingress-nginx --version ${version} \
    --set controller.service.loadBalancerIP=192.168.0.180 \
    --set controller.progressDeadlineSeconds=null \
    --create-namespace

echo "Successfully installed ingress-nginx"