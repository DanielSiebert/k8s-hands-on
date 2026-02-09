#!/usr/bin/env bash
set -euo pipefail

: "${PROJECT_ID:?Set PROJECT_ID}"
: "${ZONE:?Set ZONE}"
: "${CLUSTER_NAME:?Set CLUSTER_NAME}"

echo "Deleting GKE cluster: ${CLUSTER_NAME} in ${ZONE}"

gcloud container clusters delete "${CLUSTER_NAME}" \
  --project "${PROJECT_ID}" \
  --zone "${ZONE}" \
  --quiet

echo "Deleted."

