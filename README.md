# Kubernetes Hands-on (GKE Standard)

Dieses Repo enthält ein kleines, schrittweises Kubernetes Hands-on auf Google Kubernetes Engine (GKE Standard):
- Requests/Limits
- Liveness/Readiness Probes
- Pod-Scaling (HPA)
- Node-Scaling (Cluster Autoscaler)
- Worker Pools / Node Pools (Placement via nodeSelector)

## Voraussetzungen
- gcloud CLI installiert und eingeloggt (`gcloud auth login`)
- Projekt gesetzt (`gcloud config set project <PROJECT_ID>`)
- kubectl installiert
- Berechtigung, GKE Cluster/NodePools zu erstellen

## Variablen (empfohlen)
Exportiere dir vorab:
```bash
export PROJECT_ID="<PROJECT_ID>"
export REGION="europe-west3"
export ZONE="europe-west3-a"
export CLUSTER_NAME="hands-on-cluster"

