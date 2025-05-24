#!/bin/bash

version="1.17.2"

kubectl apply -f https://github.com/cert-manager/cert-manager/releases/download/v${version}/cert-manager.yaml

sleep 30

