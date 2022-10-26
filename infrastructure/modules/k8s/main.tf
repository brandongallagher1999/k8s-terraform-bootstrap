

resource "azurerm_kubernetes_cluster" "example" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group
  dns_prefix          = "${var.name}-dns"

  provisioner "local-exec" { #Set context after creation
    command = "az aks get-credentials --resource-group ${var.resource_group} --name ${var.name}"
  }


  azure_active_directory_role_based_access_control {
    managed            = true
    azure_rbac_enabled = true #Can bind Azure AD Groups to ClusterRole(s)
  }

  default_node_pool {
    enable_auto_scaling = true
    name                = "default"
    min_count           = var.min_count
    max_count           = var.max_count
    vm_size             = var.vm_size
  }

  identity {
    type = "SystemAssigned"
  }
}