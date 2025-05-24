#!/bin/bash

version="1.17.2"

microk8s kubectl apply -f https://github.com/cert-manager/cert-manager/releases/download/v${version}/cert-manager.yaml

sleep 30

microk8s kubectl apply -f charts/oss-cert-manager/externalsecret.yaml

microk8s kubectl apply -f charts/oss-cert-manager/clusterissuer.yaml
