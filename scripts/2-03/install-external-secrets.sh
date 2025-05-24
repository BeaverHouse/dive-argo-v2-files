#!/bin/bash

version="0.17.0"

helm repo add external-secrets https://charts.external-secrets.io
helm repo update

helm install external-secrets external-secrets/external-secrets --namespace external-secrets --version ${version}