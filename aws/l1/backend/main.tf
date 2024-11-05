// aws/L2/dynamodb/main.tf

// Include the AWS provider
provider "aws" {
  region = var.region
}

// Create the DynamoDB table
resource "aws_dynamodb_table" "this" {
  name         = var.table_name
  billing_mode = "PAY_PER_REQUEST" // Adjust as needed
  hash_key     = "id"

  attribute {
    name = "id"
    type = "S"
  }

  tags = merge(
    {
      "AccountID"   = var.account_id
      "AccountName" = var.account_name
      "Owner"       = var.owner
      "Environment" = var.environment
      "Region"      = var.region
    },
    var.tags // Include additional tags passed from the consuming module
  )
}
