# module "s3_bucket" {
#   # checkov:skip=CKV_TF_1: module source is pinned to a trusted tag; commit SHA pinning is handled by release process
#   source = "git::https://github.com/ealebed/terraform-modules.git?ref=s3-bucket/v1.0.1"

#   providers = { aws = aws.eu }

#   environment  = "${var.environment}-${var.aws_account_id}"
#   project_name = var.project_name
# }


module "s3_bucket_us" {
  # checkov:skip=CKV_TF_1: module source is pinned to a trusted tag; commit SHA pinning is handled by release process
  source = "git::https://github.com/ealebed/terraform-modules.git?ref=s3-bucket/v1.0.1"

  environment  = "another-${var.aws_account_id}-us"
  project_name = var.project_name
}
