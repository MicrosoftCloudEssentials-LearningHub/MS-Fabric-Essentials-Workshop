terraform {
  backend "azurerm" {
    resource_group_name  = var.remote_state_resource_group_name  # The name of the resource group for remote state storage
    storage_account_name = var.remote_state_storage_account_name # The name of the storage account for remote state storage
    container_name       = var.remote_state_container_name       # The name of the container for remote state storage
    key                  = var.remote_state_key                  # The key for the remote state file
  }
}