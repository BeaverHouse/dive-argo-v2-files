#!bin/bash

version=8.0.9

microk8s kubectl apply -f charts/oss-argocd/externalsecret.yaml

helm repo add argo https://argoproj.github.io/argo-helm
helm repo update

helm upgrade --install argocd argo/argo-cd --namespace argo-project --create-namespace \
    --values charts/oss-argocd/values.yaml \
    --create-namespace \
    --version $version
