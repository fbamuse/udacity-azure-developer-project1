resource "azurerm_app_service_plan" "test" {
  name                = "${var.application_type}-${var.resource_type}"
  location            = "${var.location}"
  resource_group_name = "${var.resource_group}"
  kind = "Linux"
  reserved = true

  sku {                                                                    
    tier = "Standerd"                                                      
    size = "S1"                                                            
  }  
}

resource "azurerm_app_service" "test" {
  name                = "${var.app_service}" 
  location            = "${var.location}"
  resource_group_name = "${var.resource_group}"
  app_service_plan_id = azurerm_app_service_plan.test.id
  site_config {
    linux_fx_version = "PYTHON|3.7"
  }
  app_settings={
    SCM_DO_BUILD_DURING_DEPLOYMENT=true
    WEBSITE_HTTPLOGGING_RETENTION_DAYS=3
    #PRE_BUILD_COMMAND="python -m pip install --upgrade pip ; pip install -r requirements.txt"
    #PRE_BUILD_COMMAND="pip install -r requirements.txt"
  }                                                               
}