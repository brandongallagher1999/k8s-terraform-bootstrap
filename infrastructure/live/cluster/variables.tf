
variable "subscription_id" {
  type        = string
  description = "Subscription ID on Azure instance."
}

variable "min_count" {
  type        = number
  description = "Minimum node count for K8s cluster."
}

variable "max_count" {
  type        = number
  description = "Maximum node count for K8s cluster."
}

variable "vm_size" {
  type        = string
  description = "VM Size for K8s Nodes."
}

variable "name" {
  type        = string
  description = "Name of the K8s Cluster."
}

variable "resource_group" {
  type        = string
  description = "Name of the resource group."
}

variable "location" {
  type        = string
  description = "Location of the K8s Cluster."
}