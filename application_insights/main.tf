resource "azurerm_log_analytics_workspace" "workspace" {
  name                 = "rec-tassetcheckfc-paula-ai-ws"
  location             = "West Europe"
  resource_group_name  = "rg-hanab-assetcheck-fc-tst"
  sku                 = "PerGB2018"
}

resource "azurerm_application_insights" "application_insights_backend" {
  name                 = "rec-tassetcheckfc-paula-ai-backend"
  location             = "West Europe"
  resource_group_name  = "rg-hanab-assetcheck-fc-tst"
  application_type     = "java"
}

resource "azurerm_application_insights" "application_insights_talend" {
  name                = "rec-tassetcheckfc-paula-ai-talend"
  location             = "West Europe"
  resource_group_name  = "rg-hanab-assetcheck-fc-tst"
  application_type     = "java"
}