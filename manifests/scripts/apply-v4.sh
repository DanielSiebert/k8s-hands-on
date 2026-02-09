#!/usr/bin/env bash
set -euo pipefail

kubectl apply -f manifests/base/00-namespace.yaml
kubectl apply -f manifests/base/01-service.yaml
kubectl apply -f manifests/variants/40-deploy-v4-nodepool-placement.yaml

kubectl get pods -n hands-on -o wide

