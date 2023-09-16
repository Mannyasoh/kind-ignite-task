provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"  
  }
}
resource "helm_release" "kube_prometheus" {
  name       = "kube-prometheus-stack"
  repository = "https://prometheus-community.github.io/helm-charts"
  chart      = "kube-prometheus-stack"
  namespace  = "monitoring"  

  set {
    name  = "prometheusOperator.createCustomResource"
    value = "false"
  }

  set {
    name  = "grafana.adminPassword"
    value = "manny"
  }
}

