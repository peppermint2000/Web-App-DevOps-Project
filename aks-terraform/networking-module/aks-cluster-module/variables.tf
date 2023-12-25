variable "aks_cluster_name" {
  description = "Name of the AKS cluster"
  type        = string
}

variable "cluster_location" {
  description = "Location of the AKS cluster"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the Azure Resource Group for the AKS cluster"
  type        = string
}

variable "dns_prefix" {
  description = "DNS prefix for the AKS cluster"
  type        = string
}

variable "service_principal_client_id" {
  description = "Client ID of the service principal for AKS"
  type        = string
}

variable "service_principal_secret" {
  description = "Client secret of the service principal for AKS"
  type        = string
}

variable "kubernetes_version" {
  description = "Version of Kubernetes to deploy"
  type        = string
}
variable "vnet_id" {
  description = "ID of the virtual network"
  type        = string
}

variable "control_plane_subnet_id" {
  description = "ID of the control plane subnet"
  type        = string
}

variable "worker_node_subnet_id" {
  description = "ID of the worker node subnet"
  type        = string
}

variable "aks_nsg_id" {
  description = "ID of the Network Security Group for AKS"
  type        = string
}
