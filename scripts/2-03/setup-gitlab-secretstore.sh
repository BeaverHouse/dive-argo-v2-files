#!/bin/bash

read -p "Enter the GitLab PAT: " PAT

kubectl create secret generic gitlab-secret \
    --namespace external-secrets \
    --from-literal=token=${PAT}

kubectl apply -f charts/oss-eso/secretstore.yaml