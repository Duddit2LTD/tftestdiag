
locals {
  base_name = "${var.company}-${var.prefix}-${var.workload}"
}



resource "azurerm_resource_group" "rg1" {
  name = "${local.base_name}-rg"
  location = var.location
}

