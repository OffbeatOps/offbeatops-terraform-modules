// aws/L1/aws_null_label/main.tf

module "aws_null_label" {
  source   = "cloudposse/label/null"
  version  = "0.25.0"
  
  namespace  = "your_namespace"
  environment = var.environment
  stage      = var.environment  // Assuming stage is the same as environment
  name       = "your_name"  // Modify this as needed
  attributes = [var.region]  // Include region as an attribute if desired
  delimiter  = "-"

  tags = {
    "Owner"       = var.owner
    "Project"     = "MyProject" // Example project tag
    "CostCenter"  = "12345"     // Example cost center tag
  }
}

// Input variables
variable "environment" {
  description = "Environment for the resource (e.g., dev, qa, prod)"
  type        = string
}

variable "owner" {
  description = "Owner of the resource"
  type        = string
}

variable "region" {
  description = "Region for the resource"
  type        = string
}
