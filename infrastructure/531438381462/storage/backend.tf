terraform {
  backend "s3" {
    bucket       = "tf-state-531438381462-digger"
    key          = "infrastructure/531438381462/storage/terraform.tfstate"
    region       = "eu-west-1"
    use_lockfile = true
  }
}
