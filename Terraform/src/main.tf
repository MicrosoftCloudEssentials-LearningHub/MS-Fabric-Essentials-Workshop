# Create a resource group
resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name  # Name of the resource group
  location = var.location             # Location of the resource group
}

# Create an SQL Server
resource "azurerm_sql_server" "example" {
  name                         = var.sql_server_name            # Name of the SQL Server
  resource_group_name          = azurerm_resource_group.example.name  # Resource group name
  location                     = azurerm_resource_group.example.location  # Location of the SQL Server
  version                      = "12.0"                         # SQL Server version
  administrator_login          = var.admin_username             # Administrator username
  administrator_login_password = var.admin_password             # Administrator password
}

# Create an SQL Database
resource "azurerm_sql_database" "example" {
  name                = var.sql_database_name                   # Name of the SQL Database
  resource_group_name = azurerm_resource_group.example.name     # Resource group name
  location            = azurerm_resource_group.example.location # Location of the SQL Database
  server_name         = azurerm_sql_server.example.name         # SQL Server name
  edition             = "Basic"                                 # Edition of the SQL Database
}

# Create Microsoft Fabric Capacity
resource "azurerm_microsoft_fabric_capacity" "example" {
  name                = var.fabric_capacity_name                # Name of the Microsoft Fabric Capacity
  resource_group_name = azurerm_resource_group.example.name     # Resource group name
  location            = azurerm_resource_group.example.location # Location of the Microsoft Fabric Capacity
  sku_name            = var.fabric_sku_name                     # SKU name for the Microsoft Fabric Capacity
}