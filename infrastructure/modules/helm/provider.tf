terraform {
  required_providers {
    helm = {
      source  = "hashicorp/helm"
      version = "2.7.1"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.28.0"
    }
  }
  required_version = ">=1.3.3"
}

