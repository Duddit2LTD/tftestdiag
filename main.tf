
locals {
  base_name = "${var.company}-${var.prefix}-${var.workload}"
}



resource "azurerm_resource_group" "rg_uk001" {
  name = "${local.base_name}-uk-rg"
  location = var.locations.uk
}

resource "azurerm_resource_group" "rg_us001" {
  name = "${local.base_name}-us-rg"
  location = var.locations.us
}

resource "azurerm_virtual_network" "vnet_uk001" {
  name                = "${local.base_name}-uk-vnet"
  location            = var.locations.uk
  resource_group_name = azurerm_resource_group.rg_uk001.name
  address_space       = var.vnet_address_space-uk
}

resource "azurerm_virtual_network" "vnet_uk001" {
  name                = "${local.base_name}-us-vnet"
  location            = var.locations.uks
  resource_group_name = azurerm_resource_group.rg_us001.name
  address_space       = var.vnet_address_space-us
}
