resource "helm_release" "otel-collector" {
  name       = "otel-collector"
  namespace  = "monitoring"
  version    = "0.123.1"
  repository = "https://open-telemetry.github.io/opentelemetry-helm-charts"
  chart      = "open-telemetry/opentelemetry-collector"
  create_namespace = true
  set {
    name  = "mode"
    value = "daemonset"
  }
}
