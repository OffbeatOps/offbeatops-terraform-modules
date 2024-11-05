locals {
  # Centralized mapping of account IDs and names
  account_mappings = {
    "shared-services" = {
      id   = "111111111111"
      name = "Shared Services Account"
    }
    "dev"            = {
      id   = "222222222222"
      name = "Development Account"
    }
    "qa"             = {
      id   = "333333333333"
      name = "QA Account"
    }
    "prod"           = {
      id   = "444444444444"
      name = "Production Account"
    }
  }
}