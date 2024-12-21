provider "azurerm" {
  features {}
}

terraform {
  required_version = "~> 1.9"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.71"
    }
    http = {
      source  = "hashicorp/http"
      version = "~> 3.4"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.5"
    }
  }
  backend "azurerm" {
  resource_group_name  = "rg_Storage"
  storage_account_name = "duddit2testingtfstate"
  container_name       = "tfstate"
  key                  = "tftestdiag.tfstate"
  use_oidc             = true
  }
}