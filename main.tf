# 1. Define the Backend (Where the state file lives)
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "YOUR_STORAGE_RG_NAME" # Change this to the RG where your storage account is
    storage_account_name = "tfgithublab251251"
    container_name       = "tfstate"
    key                  = "prod.terraform.tfstate"
  }
}

# 2. Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}

# 3. Create a simple Resource Group for testing
resource "azurerm_resource_group" "example" {
  name     = "rg-terraform-github-test"
  location = "East US" # You can change this to "Central India" or any other region
}