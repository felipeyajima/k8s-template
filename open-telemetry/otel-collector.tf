resource "helm_release" "otel-collector" {
  name       = "otel-collector"
  namespace  = "monitoring"
  version    = "0.122.5"
  repository = "https://open-telemetry.github.io/opentelemetry-helm-charts"
  chart      = "opentelemetry-collector"
  create_namespace = true
  values = [
    file("${path.module}/otel-collector-values.yaml")
  ]
}
