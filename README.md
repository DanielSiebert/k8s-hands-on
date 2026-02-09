## Purpose

This repository is a hands-on Kubernetes workshop built on Google Kubernetes Engine (GKE Standard).

The goal is to make core Kubernetes concepts tangible by demonstrating them live on a real cluster instead of abstract slides or managed abstractions such as GKE Autopilot.

The workshop focuses on:
- Pod scheduling and resource management (CPU / memory requests & limits)
- Liveness and readiness probes
- Horizontal Pod Autoscaling (HPA)
- Cluster Autoscaler and node scaling
- Worker pools / node pools and workload placement

All examples use intentionally simple container images to keep the focus on Kubernetes behavior rather than application logic.


## Scope & Non-Goals

Scope:
- Understanding how Kubernetes schedules pods and scales workloads
- Observing the interaction between pods, nodes, and autoscalers
- Gaining intuition for production-relevant Kubernetes settings

Non-Goals:
- Building or deploying production applications
- Advanced networking, security, or CI/CD topics
- YAML templating frameworks (Helm, Kustomize, etc.)

The manifests are intentionally kept simple and explicit to support learning and live demonstrations.

