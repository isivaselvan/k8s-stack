deployment "dev"     { inputs = { namespace = "stack-dev",     kube_config_raw = var.kube_config } }
deployment "staging" { inputs = { namespace = "stack-staging", kube_config_raw = var.kube_config } }
deployment "prod"    { inputs = { namespace = "stack-prod",    kube_config_raw = var.kube_config } }