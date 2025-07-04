terraform {
  required_version = ">= 1.12.2"

  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "=4.34.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "10c7afc3-df61-4686-a272-a5aba7014038"
}

# module docker_registry {
#   source = "./docker_registry"
# }

# module "storage_account" {
#   source = "./storage_account"
# }

module "application_insights" {
  source = "./application_insights"
}
