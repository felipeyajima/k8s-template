module "open-telemetry" {
  source = "./open-telemetry-collector"

  grafana_cloud_instance_id = var.grafana_cloud_instance_id
  grafana_cloud_api_key     = var.grafana_cloud_api_key
}
