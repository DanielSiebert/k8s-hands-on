#!/usr/bin/env bash
set -euo pipefail

: "${PROJECT_ID:?Set PROJECT_ID}"
: "${ZONE:?Set ZONE}"
: "${CLUSTER_NAME:?Set CLUSTER_NAME}"

echo "Fetching kubeconfig credentials for ${CLUSTER_NAME}..."

gcloud container clusters get-credentials "${CLUSTER_NAME}" \
  --project "${PROJECT_ID}" \
  --zone "${ZONE}"

kubectl cluster-info
kubectl get nodes -o wide

