terraform {
  backend "azurerm" {
    resource_group_name  = "vky-rg"
    storage_account_name = "vkysa31121987"
    container_name       = "vkyblob01"
    key                  = "rg_terraform.tfstate"
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.80.0"
    }
  }
}
provider "azurerm" {
  features {}
}