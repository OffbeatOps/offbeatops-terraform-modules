locals {
  # Centralized mapping of account IDs, names, VPC, and subnet CIDR blocks
  account_mappings = {
    "shared-services" = {
      id      = "111111111111"
      name    = "Shared Services Account"
      vpc_cidr = "10.0.0.0/16"
    }
    "dev" = {
      id      = "222222222222"
      name    = "Development Account"
      vpc_cidr = "10.1.0.0/16"
    }
    "qa" = {
      id      = "333333333333"
      name    = "QA Account"
      vpc_cidr = "10.2.0.0/16"
    }
    "prod" = {
      id      = "444444444444"
      name    = "Production Account"
      vpc_cidr = "10.3.0.0/16"
    }
  }

  account_info = local.account_mappings[var.environment]
}
