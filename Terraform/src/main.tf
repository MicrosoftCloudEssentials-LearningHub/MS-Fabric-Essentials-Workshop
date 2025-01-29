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
  depends_on               = [azurerm_resource_group.example]  # Ensure resource group is created first
}

# Create a storage container for remote state
resource "azurerm_storage_container" "example" {
  name                  = var.container_name
  storage_account_name  = azurerm_storage_account.example.name
  container_access_type = "private"
  depends_on            = [azurerm_storage_account.example]  # Ensure storage account is created first
}

# Create an MSSQL Server
resource "azurerm_mssql_server" "example" {
  name                         = var.sql_server_name            # Name of the SQL Server
  resource_group_name          = azurerm_resource_group.example.name  # Resource group name
  location                     = azurerm_resource_group.example.location  # Location of the SQL Server
  version                      = "12.0"                         # SQL Server version
  administrator_login          = var.admin_username             # Administrator username
  administrator_login_password = var.admin_password             # Administrator password
  depends_on                   = [azurerm_resource_group.example]  # Ensure resource group is created first
}

# Create an MSSQL Database
resource "azurerm_mssql_database" "example" {
  name      = var.sql_database_name                   # Name of the SQL Database
  server_id = azurerm_mssql_server.example.id         # ID of the SQL Server
  sku_name  = "Basic"                                 # SKU name for the SQL Database
  depends_on = [azurerm_mssql_server.example]         # Ensure SQL Server is created first
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
    },
    properties = {
      administrators = [
        {
          principalId = var.admin_principal_id  # Add the capacity administrator
        }
      ]
    }
  })

  # Disable schema validation
  schema_validation_enabled = false
  depends_on = [azurerm_resource_group.example]  # Ensure resource group is created first
}