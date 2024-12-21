variable "enable_telemetry" {
  description = "Enable telemetry for the Key Vault"
  type        = bool
  default     = false
  
}
variable "location" {
  description = "The location/region where the Key Vault should be created"
  type        = string
  
}

variable "vnets" {
  description = "The virtual networks to which the Key Vault should be connected"
  type        = map(any)
  
}