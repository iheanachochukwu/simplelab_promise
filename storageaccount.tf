resource "azurerm_storage_account" "promisesa" {
  name                     = "promisesa"
  resource_group_name      = azurerm_resource_group.promiserg.name
  location                 = azurerm_resource_group.promiserg.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
  }
}