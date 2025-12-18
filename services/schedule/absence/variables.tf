variable "aws_account_id" {
  type        = string
  description = "AWS Account ID"
  # default     = "531438381462"
}

variable "environment" {
  type        = string
  description = "Deployment environment"
  # default     = "dev"
}

variable "region" {
  type        = string
  description = "AWS region for deployment"
  # default     = "eu-west-1"
}

variable "team_owner" {
  type        = string
  description = "Team owner of the service"
  default     = "schedule"
}

variable "service_name" {
  type        = string
  description = "Service name"
  default     = "absence"
}
