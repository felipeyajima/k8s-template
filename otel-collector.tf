resource "helm_release" "otel-collector" {
  name       = "otel-collector"
  namespace  = "monitoring"
  version    = "opentelemetry-collector-0.122.6"
  repository = "https://open-telemetry.github.io/opentelemetry-helm-charts"
  chart      = "opentelemetry-collector"
  create_namespace = true
  set {
    name  = "mode"
    value = "daemonset"
  }
}
