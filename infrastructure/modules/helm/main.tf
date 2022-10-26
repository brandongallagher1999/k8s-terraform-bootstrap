


resource "azurerm_public_ip" "public_ip" {
  name                = var.public_ip_name
  resource_group_name = var.resource_group
  location            = var.location
  allocation_method   = "Static"
}

resource "helm_release" "nginx_ingress" {
  name       = "${var.cluster_name}-nginx-ingress-controller"
  version    = "4.2.5"
  repository = "https://kubernetes.github.io/ingress-nginx/"
  chart      = "ingress-nginx"

  set {
    name  = "controller.service.loadBalancerIP"
    value = azurerm_public_ip.public_ip.ip_address
  }
}