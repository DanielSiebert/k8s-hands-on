#!/usr/bin/env bash
set -euo pipefail

kubectl apply -f manifests/base/00-namespace.yaml
kubectl apply -f manifests/base/01-service.yaml
kubectl apply -f manifests/variants/20-deploy-v2-resources-probes.yaml

kubectl get pods -n hands-on -o wide

