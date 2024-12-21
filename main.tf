resource "azurerm_resource_group" "vnet" {
  location = var.location
  name     = module.naming.resource_group.name_unique
}
resource "azurerm_resource_group" "management" {
  location = var.location
  name     = module.naming.resource_group.name_unique
}