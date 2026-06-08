trivyScan () {
    echo "helm pull $1 --version $3"
    helm pull "$1" --version $3
    tar -xvf "$2-$3.tgz"
    echo "run trivy scan on $2 --helm-values $4"
    if [[ -z "$4" ]]; then
        trivy config --helm-kube-version 1.29.0 "$2"
    else
        trivy config --helm-kube-version 1.29.0 --helm-values "$4" "$2"
    fi
}

helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update
trivyScan "prometheus-community/kube-state-metrics" "kube-state-metrics" \
          "7.2.2" \
          "deploy-templates/default-values.yaml"