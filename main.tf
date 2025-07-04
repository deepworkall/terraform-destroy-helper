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

resource "azurerm_container_registry" "docker_registry" {
    location                      = "westeurope"
    name                          = "rectassetcheckfcpaula"
    resource_group_name           = "rg-hanab-assetcheck-fc-tst"
    sku                           = "Standard"
    admin_enabled = true
}