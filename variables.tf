variable "company" {
  description = "The name of the company for which these resources are being created."
  default     = "pj"
}
variable "prefix" {
  description = "A prefix which can be added to all resources in this example."
  default     = "prefix"
}
variable "workload" {
  description = "The name of the workload for which these resources are being created."
  default     = "blarr"
  
}

variable "locations" {
  description = "The Azure Region in which all resources in this example should be created."
  type        = map(any)

  default     = "uksouth"
  
}

variable "vnet_address_space-uk" {
  description = "The address space to be used for the Azure virtual network."
  default     = ["10.350.0.0/24","10.351.0.0/20","10.352.0.0/24","10.353.0.0/24"]
}

variable "vnet_address_space-us" {
  description = "The address space to be used for the Azure virtual network."
  default     = ["10.350.0.0/24","10.351.0.0/20","10.352.0.0/24","10.353.0.0/24"]
}
