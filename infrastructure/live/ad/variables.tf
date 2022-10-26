

variable "tenant_id" {
  type        = string
  description = "Tenant ID of Azure Subscription"
}

variable "cluster_role_name" {
  type        = string
  description = "Name of Cluster Role"
}

variable "cluster_name" {
  type        = string
  description = "Name of Cluster for context"
}