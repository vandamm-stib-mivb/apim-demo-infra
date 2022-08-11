terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.17.0"
    }
  }
}

provider "azurerm" {
  features {}
  disable_terraform_partner_id = false
}

resource "azurerm_resource_group" "resource_group" {
  name     = var.resource_group_name
  location = var.app_location
  tags     = var.app_tags
}

resource "azurerm_service_plan" "app_service_plan" {
  name                = var.app_service_plan_name
  os_type             = var.app_service_plan_os_type
  sku_name            = var.app_service_plan_sku
  resource_group_name = azurerm_resource_group.resource_group.name
  location            = azurerm_resource_group.resource_group.location
  tags                = azurerm_resource_group.resource_group.tags
}

resource "azurerm_linux_web_app" "app_service" {
  name                = var.app_service_name
  https_only          = var.https_only
  resource_group_name = azurerm_resource_group.resource_group.name
  service_plan_id     = azurerm_service_plan.app_service_plan.id
  location            = azurerm_service_plan.app_service_plan.location
  tags                = azurerm_service_plan.app_service_plan.tags

  site_config {
    always_on        = var.always_on
    app_command_line = var.app_command_line
    application_stack {
      php_version   = var.php_version
    }
    default_documents = var.default_document_list
    health_check_path = var.health_check_path
  }
}