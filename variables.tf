variable "host" {
  description = "Host do K8s"
  sensitive   = true
}

variable "client_certificate" {
  description = "Certificado do K8s"
  sensitive   = true
}

variable "client_key" {
  description = "Client Key do K8s"
  sensitive   = true
}

variable "cluster_ca_certificate" {
  description = "CA do K8s"
  sensitive   = true
}

variable "grafana_cloud_instance_id" {
  description = "User Grafana Cloud"
  type        = string
  sensitive   = true
}

variable "grafana_cloud_api_key" {
  description = "Pass do Grafana Cloud"
  type        = string
  sensitive   = true
}

