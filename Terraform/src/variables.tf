# Variable for the resource group name
variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

# Variable for the location of the resources
variable "location" {
  description = "The location of the resources"
  type        = string
  default     = "East US"  # Default location
}

# Variable for the SQL Server name
variable "sql_server_name" {
  description = "The name of the SQL Server"
  type        = string
}

# Variable for the administrator username for the SQL Server
variable "admin_username" {
  description = "The administrator username for the SQL Server"
  type        = string
}

# Variable for the administrator password for the SQL Server
variable "admin_password" {
  description = "The administrator password for the SQL Server"
  type        = string
  sensitive   = true  # Mark this variable as sensitive
}

# Variable for the SQL Database name
variable "sql_database_name" {
  description = "The name of the SQL Database"
  type        = string
}

# Variable for the Microsoft Fabric Capacity name
variable "fabric_capacity_name" {
  description = "The name of the Microsoft Fabric Capacity"
  type        = string
}

# Variable for the SKU name for the Microsoft Fabric Capacity
variable "fabric_sku_name" {
  description = "The SKU name for the Microsoft Fabric Capacity"
  type        = string
}

# Variable for the storage account name
variable "storage_account_name" {
  description = "The name of the storage account for remote state storage"
  type        = string
}

# Variable for the container name
variable "container_name" {
  description = "The name of the container for remote state storage"
  type        = string
}