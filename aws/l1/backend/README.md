# S3 and DynamoDB Backend Module

This module creates an S3 bucket and a DynamoDB table for use as the backend for Terraform state storage and state locking.

## Inputs
- `bucket_name`: Name of the S3 bucket to create.
- `table_name`: Name of the DynamoDB table for state locking.

## Outputs
- `bucket_name`: The name of the created S3 bucket.
- `dynamodb_table_name`: The name of the created DynamoDB table.