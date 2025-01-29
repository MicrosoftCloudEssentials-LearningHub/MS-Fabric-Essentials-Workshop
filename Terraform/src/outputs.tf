# Output the name of the MSSQL Server
output "sql_server_name" {
  value = azurerm_mssql_server.example.name  # The name of the SQL Server
}

# Output the name of the MSSQL Database
output "sql_database_name" {
  value = azurerm_mssql_database.example.name  # The name of the SQL Database
}

# Output the name of the Microsoft Fabric Capacity
output "fabric_capacity_name" {
  value = azapi_resource.example.name  # The name of the Microsoft Fabric Capacity
}