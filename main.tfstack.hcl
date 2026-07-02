required_providers {
  kubernetes = {
    source  = "hashicorp/kubernetes"
    version = "~> 2.35"
  }
}
variable "namespace" { type = string }
variable "kube_config_raw" { type = string }

provider "kubernetes" "this" {
  config {
    raw_config = var.kube_config_raw
  }
}
component "ns" {
  source = "./k8s"
  inputs = { name = var.namespace }
  providers = { kubernetes = provider.kubernetes.this }
}