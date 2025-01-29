terraform {
  # Specify the required providers and their versions
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"  # Source of the AzureRM provider
      version = "~> 3.2.0"           # Version of the AzureRM provider
    }
  }
}

provider "azurerm" {
  features {}  # Enable all features for the AzureRM provider
}