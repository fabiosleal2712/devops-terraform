terraform {

  required_version = ">= 1.0.0"

  required_providers {
    azurem = {
      source  = "hashicorp/azurerm"
      version = "2.94.0"
    }
  }


  backend "azurerm" {
    resource_group_name  = "remote-state"
    storage_account_name = "fabiolealstate"
    container_name       = "remote-state"
    key                  = "azure-vm-provisioners/terraform.tfstate"
  }
}

provider "azurem" {
  features {}

}

data "terraform_remote_state" "vnet" {
  backend = "azurerm"
  config = {
    resource_group_name  = "remote-state"
    storage_account_name = "fabiolealstate"
    container_name       = "remote-state"
    key                  = "azure-vnet/terraform.tfstate"
  }
}