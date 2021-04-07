resource "azurerm_sql_server" "test" {
  name                = "${var.sqlsvrname}"
  location            = "${var.location}"
  resource_group_name = "${var.resource_group}"
  version                      = "12.0"
  administrator_login          = "bamuse"
  administrator_login_password = "!fuku11MASA"

}

resource "azurerm_sql_firewall_rule" "test" {
  name                = "FirewallRule1"
  resource_group_name = "${var.resource_group}"
  server_name         = azurerm_sql_server.test.name
  start_ip_address    = "0.0.0.0"
  end_ip_address      = "0.0.0.0"
}


resource "azurerm_sql_database" "test" {
  name                = "${var.sqldbname}"
  resource_group_name = "${var.resource_group}"
  location            = "${var.location}"
  server_name         = azurerm_sql_server.test.name
  edition             = "Basic"

}