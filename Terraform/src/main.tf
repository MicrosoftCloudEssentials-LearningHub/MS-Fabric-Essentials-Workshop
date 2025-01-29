# Create a resource group
resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name  # Name of the resource group
  location = var.location             # Location of the resource group
}

# Create a storage account for remote state
resource "azurerm_storage_account" "example" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

# Create a storage container for remote state
resource "azurerm_storage_container" "example" {
  name                  = var.container_name
  storage_account_name  = azurerm_storage_account.example.name
  container_access_type = "private"
}

# Create an MSSQL Server
resource "azurerm_mssql_server" "example" {
  name                         = var.sql_server_name            # Name of the SQL Server
  resource_group_name          = azurerm_resource_group.example.name  # Resource group name
  location                     = azurerm_resource_group.example.location  # Location of the SQL Server
  version                      = "12.0"                         # SQL Server version
  administrator_login          = var.admin_username             # Administrator username
  administrator_login_password = var.admin_password             # Administrator password
}

# Create an MSSQL Database
resource "azurerm_mssql_database" "example" {
  name                = var.sql_database_name                   # Name of the SQL Database
  resource_group_name = azurerm_resource_group.example.name     # Resource group name
  location            = azurerm_resource_group.example.location # Location of the SQL Database
  server_name         = azurerm_mssql_server.example.name       # SQL Server name
  sku_name            = "Basic"                                 # SKU name for the SQL Database
}

# Create Microsoft Fabric Capacity using azapi_resource
resource "azapi_resource" "example" {
  type      = "Microsoft.Fabric/capacities@2023-11-01"
  name      = var.fabric_capacity_name
  location  = azurerm_resource_group.example.location
  parent_id = azurerm_resource_group.example.id

  body = jsonencode({
    sku = {
      name = var.fabric_sku_name
    }
  })

  # Disable schema validation
  schema_validation_enabled = false
}