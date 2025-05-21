resource "helm_release" "otel-collector" {
  name       = "otel-collector"
  namespace  = "monitoring"
  version    = "0.125.0"
  repository = "https://open-telemetry.github.io/opentelemetry-helm-charts"
  chart      = "opentelemetry-collector"
  create_namespace = true
  values = [
    file("${path.module}/otel-collector-values.yaml")
  ]
  set {
    name  = "mode"
    value = "daemonset"
  }
  set {
    name  = "image.repository"
    value = "otel/opentelemetry-collector-contrib"
  }
  set {
    name  = "config.exporters.otlphttp/grafana_cloud.endpoint"
    value = "https://otlp-gateway-prod-sa-east-1.grafana.net/otlp:443"
  }
  set {
    name  = "config.exporters.otlphttp/grafana_cloud.auth.authenticator"
    value = "basicauth/grafana_cloud"
  }
  set {
    name  = "config.extensions.client_auth.username"
    value = var.grafana_cloud_instance_id
  }
  set {
    name  = "config.extensions.client_auth.password"
    value = var.grafana_cloud_api_key
  }

  #set {
  #  name  = "command.name"
  #  value = "otelcol-contrib"
  #}


}
