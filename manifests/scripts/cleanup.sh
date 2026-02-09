#!/usr/bin/env bash
set -euo pipefail

kubectl delete deploy -n hands-on demo-v1 demo-v2 demo-v3 demo-v4 --ignore-not-found
kubectl delete hpa -n hands-on demo-v2-hpa --ignore-not-found
kubectl delete svc -n hands-on demo --ignore-not-found

echo "Remaining objects:"
kubectl get all -n hands-on || true

