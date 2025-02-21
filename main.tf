terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.105.0"
    }
  }
}

provider "azurerm" {
  features {}
}

module "resource_group_storage" {
  source                = "./modules/resource_group_storage"
  resource_group_name   = "specific-resource-group"
  storage_account_name  = "specificstorageaccount"
  location              = "West US"
}
