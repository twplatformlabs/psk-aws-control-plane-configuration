<div align="center">
	<p>
	<img alt="Thoughtworks Logo" src="https://raw.githubusercontent.com/twplatformlabs/static/master/psk_banner.png" width=800 />
	<h2>psk-aws-control-plane-configuration</h2>
	<a href="https://opensource.org/licenses/MIT"><img src="https://img.shields.io/github/license/twplatformlabs/psk-platform-svc-dist-control-plane-config"></a> <a href="https://aws.amazon.com"><img src="https://img.shields.io/badge/-deployed-blank.svg?style=social&logo=amazon"></a>
	</p>
</div>

The App-of-Apps repo for the ArgoCD Core role-based configuration of psk control plane clusters.

Wave 0: Early dependency phase (critical dependencies for configuration management)  
Wave 1: Primary release phase (app with only w0 depedencies and deps for wave 2 apps)  
Wave 2: Secondary release phase (apps with w1 dependencies))  

| wave | svc | ext | application |
|:----:|:---:|:---:|-------------|
| 0 | | :heavy_check_mark: | external-secrets-operator | x
| 0 | | :heavy_check_mark: | crossplane | x
| 1 | | :heavy_check_mark: | crossplane-aws, providers and platform compositions | x
| 1 | :heavy_check_mark: | | metrics-server | x
| 1 | :heavy_check_mark: | | kube-state-metrics | x




| 2 | :heavy_check_mark: | | observability dependencies |
| 3 | :heavy_check_mark: | | observability stores, loki, tempo, etc  |
| 4 | :heavy_check_mark: | | observability |




(_pending_)
| wave | svc | ext | application |
|:----:|:---:|:---:|-------------|
| 1 | :heavy_check_mark: | | otelCollector |
| 2 | | :heavy_check_mark: | istio |
| 2 | | :heavy_check_mark: | cert-manager |
| 2 | | :heavy_check_mark: | external-dns |

wave 1 or 2 ?
| wave | svc | ext | application |
|:----:|:---:|:---:|-------------|
| 1 | :heavy_check_mark: | | keda |
| 1 | :heavy_check_mark: | | argo events |
| 1 | :heavy_check_mark: | | trivy operator |
| 1 | :heavy_check_mark: | | argo rollouts |
