module "s3_bucket" {
  source = "git::https://github.com/ealebed/terraform-modules.git?ref=s3-bucket/v1.0.0"

  environment  = var.environment
  project_name = var.project_name
}

# resource "aws_s3_bucket" "demo" {
#   bucket = "storage-${var.environment}-531438381462-digger"
# }
