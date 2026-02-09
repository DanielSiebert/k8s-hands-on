#!/usr/bin/env bash
set -euo pipefail

kubectl apply -f manifests/variants/50-hpa.yaml
kubectl get hpa -n hands-on

