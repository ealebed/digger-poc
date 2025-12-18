# module "s3_bucket" {
#   # checkov:skip=CKV_TF_1: module source is pinned to a trusted tag; commit SHA pinning is handled by release process
#   source = "git::https://github.com/ealebed/terraform-modules.git?ref=s3-bucket/v1.0.1"
#
#   environment  = "${var.aws_account_id}-${var.service_name}-${var.environment}-${var.region}"
#   project_name = var.project_name
# }
