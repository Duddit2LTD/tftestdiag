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

variable "location" {
  description = "The Azure Region in which all resources in this example should be created."
  default     = "uksouth"
  
}
