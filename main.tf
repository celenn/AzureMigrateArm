provider "azurerm" {

  features {}
}

# Creates a resource group
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.rg_location
}

resource "azurerm_template_deployment" "azure_migrate" {
  
  name                = var.deployment_name
  resource_group_name = azurerm_resource_group.rg.name

  template_body = file("./templates/ARM-Azure-Migrate-v2020.txt")

  parameters = {
    migrateProjectName = "bupa"
    location = "uksouth"


  }

  deployment_mode = "Incremental"
}