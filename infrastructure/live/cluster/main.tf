


module "bootstrap_k8s_cluster" {
  source         = "../../modules/k8s"
  min_count      = var.min_count
  max_count      = var.max_count
  vm_size        = var.vm_size
  location       = var.location
  name           = var.name
  resource_group = var.resource_group
}

provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
}