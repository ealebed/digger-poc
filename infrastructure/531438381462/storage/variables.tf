variable "aws_account_id" {
  type        = string
  description = "AWS Account ID"
  default     = "531438381462"
}

variable "environment" {
  type        = string
  description = "Deployment environment"
  default     = "dev"
}

variable "project_name" {
  type        = string
  description = "Project name"
  default     = "digger"
}
