// Input variables
variable "namespace" {
  description = "Namespace for the label"
  type        = string
}

variable "environment" {
  description = "Environment for the label (e.g., dev, qa, prod)"
  type        = string
}

variable "name" {
  description = "Name for the label"
  type        = string
}

variable "attributes" {
  description = "Additional attributes for the label"
  type        = list(string)
  default     = []
}

variable "account_id" {
  description = "Account ID associated with the label"
  type        = string
}

variable "account_name" {
  description = "Account name associated with the label"
  type        = string
}

variable "owner" {
  description = "Owner of the resources"
  type        = string
}

variable "region" {
  description = "Region associated with the label"
  type        = string
}

variable "tags" {
  description = "Additional tags for the resources"
  type        = map(string)
  default     = {}
}