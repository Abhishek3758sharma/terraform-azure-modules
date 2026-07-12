terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.80.0"
    }
  }
    backend "azurerm" {
    resource_group_name = "Rg-load"
    storage_account_name = "storageabhishek3758"
    container_name = "vhds"
    key="tfstate"  
  }
}

provider "azurerm" {
  features {

  }
}