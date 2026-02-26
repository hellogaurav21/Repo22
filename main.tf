terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "central-rg" # Change this to the RG where your storage account is
    storage_account_name = "tfgithublab251251"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg1" {
  name     = "rg-terraform-github-test"
  location = "East US"
}

resource "azurerm_resource_group" "rg2" {
  name     = "rg2-terraform-github-test"
  location = "East US"
}
