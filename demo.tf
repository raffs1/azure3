
# added 10/10/2023 - testing branching

resource "azurerm_resource_group" "rg" {
  provider = azurerm.connectivity
  count    = length(var.resource_group_names)
  name     = var.resource_group_names[count.index]
  location = var.location
}

resource "azurerm_resource_group" "azurermNetworkWatcher" {
  name     = "NetworkWatcherRG"
  location = "Australia East"
}

resource "azurerm_network_watcher" "azurermNetworkWatcher" {
  name                = "NetworkWatcherRG"
  location            = azurerm_resource_group.azurermNetworkWatcher.location
  resource_group_name = azurerm_resource_group.azurermNetworkWatcher.name
}