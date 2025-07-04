terraform {
  backend "azurerm" {
    resource_group_name = "rg-hanab-assetcheck-fc-tst"
    storage_account_name = "assetcheckfctsttf"
    container_name = "terraformstate"
    key = "paula/assetcheckfc/test/00_bootstrap/application_insights/terraform.tfstate"
  }
}

#https://assetcheckfctsttf.blob.core.windows.net/terraformstate/paula/assetcheckfc/test/00_bootstrap/application_insights/terraform.tfstate
