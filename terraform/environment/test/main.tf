provider "azurerm" {
  tenant_id       = "${var.tenant_id}"
  subscription_id = "${var.subscription_id}"
  client_id       = "${var.client_id}"
  client_secret   = "${var.client_secret}"
  features {}
}
terraform {
    backend "azurerm" {
        resource_group_name = "tstate"
        storage_account_name = "tstate210319"
        container_name = "azuredevproject1"
        key = "terraform.tstate"
    }
}
module "resource_group" {
  source               = "../../modules/resource_group"
  resource_group       = "${var.resource_group}"
  location             = "${var.location}"
}

module "appservice" {
  source           = "../../modules/appservice"
  location         = "${var.location}"
  application_type = "${var.application_type}"
  resource_type    = "AppService"
  resource_group   = "${module.resource_group.resource_group_name}"
  app_service      = "${var.app_service}"
}

module "storageaccount" {
  source           = "../../modules/storageaccount"
  location         = "${var.location}"
  resource_group   = "${module.resource_group.resource_group_name}"
  saname           = "${var.saname}" 
  cname            = "${var.cname}" 
}
module "sqlserver" {
  source           = "../../modules/sqlserver"
  location         = "${var.location}"
  resource_group   = "${module.resource_group.resource_group_name}"
  sqldbname        = "${var.sqldbname}" 
  sqlsvrname       = "${var.sqlsvrname}" 
}
module "monitor_diag" {
  source           =  "../../modules/monitor_diag"
  resource_group   =  "${module.resource_group.resource_group_name}"
  app_service      =  "${var.app_service}" 
  saname           =  "${var.saname}" 
  depends_on = [
    azurerm_storage_account.test
  ]
}
