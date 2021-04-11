data "azurerm_storage_account" "example" {
  name                = "${var.saname}"
  resource_group_name = "${var.resource_group}"
}

data "azurerm_app_service" "example" {
  name                = "${var.app_service}" 
  resource_group_name = "${var.resource_group}"
}



resource "azurerm_monitor_diagnostic_setting" "example" {
  name               = "example2"
  target_resource_id = data.azurerm_app_service.example.id
  storage_account_id = data.azurerm_storage_account.example.id


  log {
    category = "AppServiceAppLogs"
    enabled  = true

    retention_policy {
      days =2
      enabled = true
    }
  }

  metric {
    category = "AllMetrics"

    retention_policy {
      enabled = false
    }
  }
}
