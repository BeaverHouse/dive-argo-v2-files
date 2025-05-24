#!/bin/bash

read -p "Enter the GitLab PAT: " PAT

microk8s kubectl create secret generic gitlab-secret \
    --namespace external-secrets \
    --from-literal=token=${PAT}

microk8s kubectl apply -f charts/oss-eso/secretstore.yaml