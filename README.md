<div align="center">
	<p>
	<img alt="Thoughtworks Logo" src="https://raw.githubusercontent.com/twplatformlabs/static/master/psk_banner.png" width=800 />
	<h2>psk-aws-control-plane-configuration</h2>
	<a href="https://opensource.org/licenses/MIT"><img src="https://img.shields.io/github/license/twplatformlabs/psk-aws-control-plane-configuration"></a> <a href="https://aws.amazon.com"><img src="https://img.shields.io/badge/-deployed-blank.svg?style=social&logo=amazon"></a>
	</p>
</div>

Distributed configuration management based on cluster role.

**NOTE: the contents of the `roles` folder is managed by the individual svc or ext application lifecycle pipelines. DO NOT directly edit.**  



order

wave 0 - critical first
metrics-server (svc)
external-secrets-operator (ext)

wave 1 - dependent
cert-manager (ext)

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
