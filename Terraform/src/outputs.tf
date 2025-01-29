output "sql_server_name" {
  value = azurerm_sql_server.example.name
}

output "sql_database_name" {
  value = azurerm_sql_database.example.name
}

output "fabric_capacity_name" {
  value = azurerm_microsoft_fabric_capacity.example.name
}