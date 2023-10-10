
# added 10/10/2023 - testing branching

resource "azurerm_resource_group" "rg" {
  provider = azurerm.connectivity
  count    = length(var.resource_group_names)
  name     = var.resource_group_names[count.index]
  location = var.location
}

