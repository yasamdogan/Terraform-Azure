terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.65"
    }
  }

  required_version = ">= 1.0.11"
}

provider "azurerm" {
  features {}
}


resource "azurerm_container_registry" "acr" {
  name                = "ContainerRegistryYasam"
  resource_group_name = var.resource_group_name
  location            = "West Europe"
  sku                 = "Standard"
  admin_enabled       = false
}