# Creating a virtual network with a unique name, telemetry settings, and in the specified resource group and location.
module "vnet" {
  source              = "Azure/vnet/azurerm"
  enable_telemetry    = true
  resource_group_name = azurerm_resource_group.vnet.name
  vnet_location = var.location

  address_space = ["10.0.0.0/16"]
}