

module "helm_nginx_ip" {
  source         = "../../modules/helm"
  public_ip_name = var.public_ip_name
  resource_group = var.resource_group
  location       = var.location
  cluster_name   = var.cluster_name
}


provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
}

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}