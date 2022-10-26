
resource "azuread_group" "sre" {
  display_name     = "SRE"
  security_enabled = true
}

resource "kubernetes_cluster_role" "sre_cluster_role" {
  metadata {
    name = var.cluster_role_name
  }

  rule {
    api_groups = ["*"]
    resources  = ["*"]
    verbs      = ["*"]
  }
}

resource "kubernetes_cluster_role_binding" "sre_binding" {
  metadata {
    name = "${var.cluster_role_name}-access"
  }
  role_ref {
    api_group = "rbac.authorization.k8s.io"
    kind      = "ClusterRole"
    name      = var.cluster_role_name
  }
  subject {
    kind = "Group"
    name = azuread_group.sre.object_id
  }
}