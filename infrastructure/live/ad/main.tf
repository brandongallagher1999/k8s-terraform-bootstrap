
// Groups

resource "azuread_group" "sre" {
  display_name     = "SRE"
  security_enabled = true
}

resource "azuread_group" "developer" {
  display_name     = "Developer"
  security_enabled = true
}

// Kubernetes ClusterRoles

resource "kubernetes_cluster_role" "sre_cluster_role" {
  metadata {
    name = "SRE"
  }

  rule {
    api_groups = ["*"]
    resources  = ["*"]
    verbs      = ["*"]
  }
}

resource "kubernetes_cluster_role" "dev_cluster_role" {
  metadata {
    name = "Developer"
  }

  rule {
    api_groups = ["apps"]
    resources  = ["services", "deployments", "pods"]
    verbs      = ["get", "list", "watch"]
  }
}

// Bindings

resource "kubernetes_cluster_role_binding" "sre_binding" {
  metadata {
    name = "SREBinding"
  }
  role_ref {
    api_group = "rbac.authorization.k8s.io"
    kind      = "ClusterRole"
    name      = "SRE"
  }
  subject {
    kind = "Group"
    name = azuread_group.sre.object_id
  }
}

resource "kubernetes_cluster_role_binding" "dev_binding" {
  metadata {
    name = "DeveloperBinding"
  }
  role_ref {
    api_group = "rbac.authorization.k8s.io"
    kind      = "ClusterRole"
    name      = "Developer"
  }
  subject {
    kind = "Group"
    name = azuread_group.developer.object_id
  }
}