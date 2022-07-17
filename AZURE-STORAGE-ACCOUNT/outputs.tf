output "storage_account_id" {
  value     = azurerm_storage_account.first_resource_account
  sensitive = true
}
