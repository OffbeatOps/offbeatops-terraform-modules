locals {
  # Centralized mapping of account IDs, names, VPC, and subnet CIDR blocks
  account_mappings = {
    "shared-services" = {
      id      = "111111111111"
      name    = "Shared Services Account"
      vpc_cidr = "10.0.0.0/16"
      subnets  = {
        "public"  = ["10.0.1.0/24", "10.0.2.0/24"]
        "private" = ["10.0.3.0/24", "10.0.4.0/24"]
      }
    }
    "dev" = {
      id      = "222222222222"
      name    = "Development Account"
      vpc_cidr = "10.1.0.0/16"
      subnets  = {
        "public"  = ["10.1.1.0/24", "10.1.2.0/24"]
        "private" = ["10.1.3.0/24", "10.1.4.0/24"]
      }
    }
    "qa" = {
      id      = "333333333333"
      name    = "QA Account"
      vpc_cidr = "10.2.0.0/16"
      subnets  = {
        "public"  = ["10.2.1.0/24", "10.2.2.0/24"]
        "private" = ["10.2.3.0/24", "10.2.4.0/24"]
      }
    }
    "prod" = {
      id      = "444444444444"
      name    = "Production Account"
      vpc_cidr = "10.3.0.0/16"
      subnets  = {
        "public"  = ["10.3.1.0/24", "10.3.2.0/24"]
        "private" = ["10.3.3.0/24", "10.3.4.0/24"]
      }
    }
  }

  account_info = local.account_mappings[var.environment]
}
