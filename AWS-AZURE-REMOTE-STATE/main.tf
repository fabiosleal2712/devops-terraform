terraform {

  required_version = ">= 1.0.0" # 1.1.0 até 1.1.n

  required_providers {
    aws = {
      version = ">= 3.73.0"
      source  = "hashicorp/aws"
    }

    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"

  default_tags {
    tags = {
      owner      = "fabioleal"
      managed-by = "terraform"
    }
  }
}

provider "azurerm" {
  features {}
}