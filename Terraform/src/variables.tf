variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The location of the resources"
  type        = string
  default     = "East US"
}

variable "sql_server_name" {
  description = "The name of the SQL Server"
  type        = string
}

variable "admin_username" {
  description = "The administrator username for the SQL Server"
  type        = string
}

variable "admin_password" {
  description = "The administrator password for the SQL Server"
  type        = string
  sensitive   = true
}

variable "sql_database_name" {
  description = "The name of the SQL Database"
  type        = string
}

variable "fabric_capacity_name" {
  description = "The name of the Microsoft Fabric Capacity"
  type        = string
}

variable "fabric_sku_name" {
  description = "The SKU name for the Microsoft Fabric Capacity"
  type        = string
}

variable "remote_state_resource_group_name" {
  description = "The name of the resource group for remote state storage"
  type        = string
}

variable "remote_state_storage_account_name" {
  description = "The name of the storage account for remote state storage"
  type        = string
}

variable "remote_state_container_name" {
  description = "The name of the container for remote state storage"
  type        = string
}

variable "remote_state_key" {
  description = "The key for the remote state file"
  type        = string
}