#!/bin/bash

version="0.14.9"

kubectl apply -f charts/oss-metallb/namespace.yaml

kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v${version}/config/manifests/metallb-native.yaml

kubectl apply -f charts/oss-metallb/ipconfig.yaml