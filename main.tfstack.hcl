required_providers {
  kubernetes = {
    source  = "hashicorp/kubernetes"
    version = "~> 2.35"
  }
}

variable "namespace" { type = string }

provider "kubernetes" "this" {
  config {
    config_path    = "~/.kube/config"
    config_context = "rancher-desktop"
  }
}

component "ns" {
  source    = "./k8s"
  inputs    = { name = var.namespace }
  providers = { kubernetes = provider.kubernetes.this }
}
