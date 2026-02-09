#!/usr/bin/env bash
set -euo pipefail

kubectl apply -f manifests/base/00-namespace.yaml
kubectl apply -f manifests/base/01-service.yaml
kubectl apply -f manifests/variants/30-deploy-v3-pending-for-autoscaler.yaml

echo "Watch pods/nodes in separate terminals:"
echo "  kubectl get pods -n hands-on -w"
echo "  kubectl get nodes -w"

kubectl get pods -n hands-on -o wide

