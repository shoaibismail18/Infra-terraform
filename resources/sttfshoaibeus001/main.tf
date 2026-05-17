resource "azurerm_resource_group" "main" {
  name     = var.azurerm_resource_group_name
  location = var.location
}

resource "azurerm_storage_account" "main" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.main.name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = var.environment
  }
}

resource "azurerm_storage_container" "vmtfstate" {
  name                  = "vmtfstate"
  storage_account_name  = azurerm_storage_account.main.name
  container_access_type = "private"
}

resource "azurerm_storage_container" "vnettfstate" {
  name                  = "vnettfstate"
  storage_account_name  = azurerm_storage_account.main.name
  container_access_type = "private"
}

resource "azurerm_storage_container" "snettfstate" {
  name                  = "snettfstate"
  storage_account_name  = azurerm_storage_account.main.name
  container_access_type = "private"
}

resource "azurerm_storage_container" "akstfstate" {
  name                  = "akstfstate"
  storage_account_name  = azurerm_storage_account.main.name
  container_access_type = "private"
}
