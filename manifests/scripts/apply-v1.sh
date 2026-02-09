#!/usr/bin/env bash
set -euo pipefail

kubectl apply -f manifests/base/00-namespace.yaml
kubectl apply -f manifests/base/01-service.yaml
kubectl apply -f manifests/variants/10-deploy-v1-naive.yaml

kubectl get pods -n hands-on -o wide

