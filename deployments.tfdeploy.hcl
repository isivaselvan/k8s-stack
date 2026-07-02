deployment "dev" {
  inputs = {
    namespace = "stack-dev"
  }
}

deployment "staging" {
  inputs = {
    namespace = "stack-staging"
  }
}

deployment "prod" {
  inputs = {
    namespace = "stack-prod"
  }
}
