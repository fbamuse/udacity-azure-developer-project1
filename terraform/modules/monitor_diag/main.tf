data "azurerm_storage_account" "example" {
  name                = "${saname}"
  resource_group_name = "${resource_group}"
}

data "azurerm_app_service" "example" {
  name                = "${app_service}" 
  resource_group_name = "${resource_group}"
}



resource "azurerm_monitor_diagnostic_setting" "example" {
  name               = "example"
  target_resource_id = data.azurerm_key_vault.example.id
  storage_account_id = data.azurerm_storage_account.example.id


  log {
    category = "AuditEvent"
    enabled  = false

    retention_policy {
      enabled = false
    }
  }

  metric {
    category = "AllMetrics"

    retention_policy {
      enabled = false
    }
  }
}
