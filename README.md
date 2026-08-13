<div align="center">
	<p>
	<img alt="Thoughtworks Logo" src="https://raw.githubusercontent.com/twplatformlabs/static/master/psk_banner.png" width=800 />
	<h2>psk-aws-control-plane-configuration</h2>
	<a href="https://opensource.org/licenses/MIT"><img src="https://img.shields.io/github/license/twplatformlabs/psk-platform-svc-dist-control-plane-config"></a> <a href="https://aws.amazon.com"><img src="https://img.shields.io/badge/-deployed-blank.svg?style=social&logo=amazon"></a>
	</p>
</div>

App-of-Apps repo for the ArgoCD Core role-based configuration of psk control plane clusters.

The ArgoCD Application resources adheres to the defined syncWasve deployment dependencies.  

```bash
Wave 0: Initial dependency phase: must be deployed before anything else, downstream dependencies 
│
├── Wave 1: Services or Extensions with wave 0 or no dependencies
│   └── Wave 2: Services or Extensions with wave 0,1 dependencies
│   		└── Wave 3: Services or Extensions with wave 0,1,2 dependencies
│   				└── Wave 4: Services or Extensions with wave 0,1,2,3 dependencies
```
Having subsequent waves allows for things like deploying crossplane resource request prior to the deployment where there are infrastructure dependencies.  

| wave | svc | ext | application | SDLC pipeline |
|:----:|:---:|:---:|-------------|---------------|
| 0 | | :heavy_check_mark: | external-secrets-operator | [link](https://github.com/twplatformlabs/psk-platform-ext-external-secrets-operator) |
| 0 | | :heavy_check_mark: | crossplane | [link](https://github.com/twplatformlabs/psk-platform-ext-crossplane) |
| 1 | | :heavy_check_mark: | crossplane-aws (providers and platform compositions)
| 1 | :heavy_check_mark: | | metrics-server | [link](https://github.com/twplatformlabs/psk-platform-svc-metrics-server) |
| 1 | :heavy_check_mark: | | kube-state-metrics | [link](https://github.com/twplatformlabs/psk-platform-svc-kube-state-metrics) |
| 1 | :heavy_check_mark: | | node-exporter | [link](https://github.com/twplatformlabs/psk-platform-svc-knode-exporter) |
| 2 | :heavy_check_mark: | | observability dependencies (pvc, S3) | [link](https://github.com/twplatformlabs/psk-platform-svc-simple-observability) |
| 3 | :heavy_check_mark: | | observability stores (loki, mimir, tempo) | [link](https://github.com/twplatformlabs/psk-platform-svc-simple-observability) |
| 4 | :heavy_check_mark: | | observability (collectors, grafana) | [link](https://github.com/twplatformlabs/psk-platform-svc-simple-observability) |




(_pending_)
| wave | svc | ext | application |
|:----:|:---:|:---:|-------------|
| 2 | | :heavy_check_mark: | istio |

| 3 | | :heavy_check_mark: | default-ingress |

| 2 | | :heavy_check_mark: | cert-manager |
| 2 | | :heavy_check_mark: | external-dns |

wave 1 or 2 ?
| wave | svc | ext | application |
|:----:|:---:|:---:|-------------|
| 1 | :heavy_check_mark: | | keda |
| 1 | :heavy_check_mark: | | argo events |
| 1 | :heavy_check_mark: | | trivy operator |
| 1 | :heavy_check_mark: | | argo rollouts |
