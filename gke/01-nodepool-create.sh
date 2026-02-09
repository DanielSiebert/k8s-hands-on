#!/usr/bin/env bash
set -euo pipefail

: "${PROJECT_ID:?Set PROJECT_ID}"
: "${ZONE:?Set ZONE}"
: "${CLUSTER_NAME:?Set CLUSTER_NAME}"

NODEPOOL_NAME="highcpu-pool"

echo "Creating node pool: ${NODEPOOL_NAME} (min=0, max=2) on ${CLUSTER_NAME}"

gcloud container node-pools create "${NODEPOOL_NAME}" \
  --project "${PROJECT_ID}" \
  --cluster "${CLUSTER_NAME}" \
  --zone "${ZONE}" \
  --machine-type "e2-highcpu-4" \
  --num-nodes "0" \
  --enable-autoscaling \
  --min-nodes "0" \
  --max-nodes "2"

echo "Done."

