# Output the name of the SQL Server
output "sql_server_name" {
  value = azurerm_sql_server.example.name  # The name of the SQL Server
}

# Output the name of the SQL Database
output "sql_database_name" {
  value = azurerm_sql_database.example.name  # The name of the SQL Database
}

# Output the name of the Microsoft Fabric Capacity
output "fabric_capacity_name" {
  value = azurerm_microsoft_fabric_capacity.example.name  # The name of the Microsoft Fabric Capacity
}