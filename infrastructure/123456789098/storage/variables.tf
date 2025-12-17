variable "aws_account_id" {
  type        = string
  description = "AWS Account ID"
  default     = "123456789098"
}

variable "environment" {
  type        = string
  description = "Deployment environment"
  default     = "qa"
}

variable "project_name" {
  type        = string
  description = "Project name"
  default     = "digger"
}
