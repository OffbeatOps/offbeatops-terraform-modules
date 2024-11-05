variable "region" {
  description = "AWS region to deploy the EKS cluster"
  type        = string
}

variable "environment" {
  description = "Deployment environment (e.g., dev, qa, prod)"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "tags" {
  description = "Additional tags to apply to the DynamoDB table"
  type        = map(string)
  default     = {}
}