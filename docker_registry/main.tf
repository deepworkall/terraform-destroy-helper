resource "azurerm_container_registry" "docker_registry" {
    location                      = "westeurope"
    name                          = "rectassetcheckfcpaula"
    resource_group_name           = "rg-hanab-assetcheck-fc-tst"
    sku                           = "Standard"
    admin_enabled = true
}

