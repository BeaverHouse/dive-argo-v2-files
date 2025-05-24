#!bin/bash

version=8.0.9

kubectl apply -f charts/oss-argocd/externalsecret.yaml

helm repo add argo https://argoproj.github.io/argo-helm
helm repo update

helm install argocd argo/argo-cd --namespace argocd --create-namespace \
    --values charts/oss-argocd/values.yaml \
    --create-namespace \
    --version $version
