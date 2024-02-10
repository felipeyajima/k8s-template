resource "helm_release" "kube-prometheus" {
  name       = "kube-prometheus-stack"
  namespace  = "monitoring"
  version    = "56.6.2"
  repository = "https://prometheus-community.github.io/helm-charts"
  chart      = "kube-prometheus-stack"
  create_namespace = true
}

/*
resource "helm_release" "prometheus" {
  chart      = "prometheus"
  name       = "prometheus"
  namespace  = "prometheus"
  repository = "https://prometheus-community.github.io/helm-charts"
  version    = "25.9.0"
  create_namespace = true
  timeout = "600"

  set {
    name  = "podSecurityPolicy.enabled"
    value = true
  }

  set {
    name  = "server.persistentVolume.enabled"
    value = false
  }

  # You can provide a map of value using yamlencode. Don't forget to escape the last element after point in the name
  set {
    name = "server\\.resources"
    value = yamlencode({
      limits = {
        cpu    = "300m"
        memory = "200Mi"
      }
      requests = {
        cpu    = "100m"
        memory = "30Mi"
      }
    })
  }
}

*/
