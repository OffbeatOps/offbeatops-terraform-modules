output "account_id" {
  value = local.account_info.id
}

output "account_name" {
  value = local.account_info.name
}

output "environment" {
  value = var.environment
}

output "region" {
  value = var.region
}

output "vpc_cidr" {
  value = local.account_info.vpc_cidr
}

output "subnets" {
  value = local.account_info.subnets
}

# Generate default tags
output "tags" {
  value = {
    AccountID   = local.account_info.id
    AccountName = local.account_info.name
    Environment = var.environment
    Region      = var.region
  }
}