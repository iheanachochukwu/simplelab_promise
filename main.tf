terraform {
  backend "azurerm" {
    resource_group_name  = "cloud-shell-storage-southcentralus"
    storage_account_name = "cs710037ffeaa055e81"
    container_name       = "tfstatefile"
    key                  = "storageac.tfstate"
    access_key = "enter-key here"
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0"
    }
  }
}

provider "azurerm" {
  skip_provider_registration = true
  features {}
}