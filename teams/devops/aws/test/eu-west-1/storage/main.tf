provider "aws" {
  region = var.aws_region
}

# module "core" {
#   source = "../../modules/core"

#   environment  = var.environment
#   project_name = var.project_name
# }

resource "aws_s3_bucket" "demo" {
  bucket = "storage-${var.environment}-531438381462-digger"
}
