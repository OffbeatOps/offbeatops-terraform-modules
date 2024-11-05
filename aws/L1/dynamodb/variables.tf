variable "table_name" {
  description = "The name of the DynamoDB table"
  type        = string
}

variable "tags" {
  description = "Additional tags to apply to the DynamoDB table"
  type        = map(string)
  default     = {}
}