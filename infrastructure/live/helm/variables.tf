
variable "subscription_id" {
  type        = string
  description = "Subscription ID on Azure instance."
}

variable "public_ip_name" {
  type        = string
  description = "Name of Public IP"
}

variable "resource_group" {
  type        = string
  description = "Name of the Resource Group"
}

variable "location" {
  type        = string
  description = "Location of the Public IP"
}

variable "cluster_name" {
  type        = string
  description = "Name of the K8s Cluster"
}