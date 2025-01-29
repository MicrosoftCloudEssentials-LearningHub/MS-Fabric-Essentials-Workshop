terraform {
  # Specify the required providers and their versions
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"  # Source of the AzureRM provider
      version = "~> 4.16.0"          # Version of the AzureRM provider
    }
    azapi = {
      source  = "Azure/azapi"        # Source of the AzAPI provider
      version = "~> 1.0.0"           # Version of the AzAPI provider
    }
  }
}

provider "azurerm" {
  features {}  # Enable all features for the AzureRM provider
  subscription_id = var.subscription_id  # Add your subscription ID here
}

provider "azapi" {}