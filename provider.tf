terraform {
  backend "azurerm" {
    container_name = "vkyblob01"
    storage_account_name = "vkysa31121987"
    resource_group_name = "vky-rg"
    key = "rg_terraform.tfstate"
    }
  required_providers  {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.80.0"
    }
    
  }
}
provider "azurerm" {
  features {}
}