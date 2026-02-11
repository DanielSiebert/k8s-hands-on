#!/usr/bin/env bash
set -euo pipefail

: "${PROJECT_ID:?Set PROJECT_ID}"
: "${ZONE:?Set ZONE}"
: "${CLUSTER_NAME:?Set CLUSTER_NAME}"

echo "Creating GKE Standard cluster: ${CLUSTER_NAME} in ${ZONE} (project ${PROJECT_ID})"

gcloud container clusters create "${CLUSTER_NAME}" \
  --project "${PROJECT_ID}" \
  --zone "${ZONE}" \
  --release-channel "regular" \
  --machine-type "e2-standard-4" \
  --num-nodes "1" \
  --enable-ip-alias \
  --workload-pool="${PROJECT_ID}.svc.id.goog" \
  --enable-autoscaling \
  --min-nodes "1" \
  --max-nodes "3"

echo "Done."
