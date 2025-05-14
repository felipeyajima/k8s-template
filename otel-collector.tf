resource "helm_release" "otel-collector" {
  name       = "otel-collector"
  namespace  = "monitoring"
  version    = "0.122.5"
  repository = "https://open-telemetry.github.io/opentelemetry-helm-charts"
  chart      = "opentelemetry-collector"
  create_namespace = true
  set {
    name  = "mode"
    value = "daemonset"
  }
  set {
    name  = "image.repository"
    value = "ghcr.io/open-telemetry/opentelemetry-collector-releases/opentelemetry-collector-k8s"
  }
  set {
    name  = "command.name"
    value = "otelcol-k8s"
  }
}
