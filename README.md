# psk-aws-control-plane-configuration
Distributed configuration management based on cluster role.

NOTE: the contents of the `roes` folder is managed by the individual svv or ext application lifecycle pipelines. DO NOT directly edit.



todo

order

wave 0 - critical first
metrics-server
external-secrets-operator

wave 1 - dependent services
cert-manager

wave 2 - non-dependent services
kube-state-metrics
otel-collector
trivy-operator
keda
argo-events

wave 3 - extensions
istio
external-dns
crossplane
