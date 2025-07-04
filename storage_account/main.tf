resource "azurerm_storage_account" "storage_account" {
    name                     = "rectassetcheckfcpaulasto"
    location                 = "West Europe"
    resource_group_name      = "rg-hanab-assetcheck-fc-tst"
    account_replication_type = "GRS"
    account_tier = "Standard"
}

#/subscriptions/10c7afc3-df61-4686-a272-a5aba7014038/resourceGroups/rg-hanab-assetcheck-fc-tst/providers/Microsoft.Storage/storageAccounts/rectassetcheckfcpaulasto