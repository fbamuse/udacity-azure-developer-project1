resource "azurerm_storage_account" "test" {
  name                = "${var.saname}"
  location            = "${var.location}"
  resource_group_name = "${var.resource_group}"
  account_tier             = "Standard"
  account_replication_type = "LRS"
  allow_blob_public_access ="true"

}

resource "azurerm_storage_container" "test" {
  name                  = "${var.cname}"
  storage_account_name  = azurerm_storage_account.test.name
  container_access_type = "container"
}