variable "aks_cluster_config" {
  type        = object({
    aks_cluster_name             = string
    cluster_location             = string
    dns_prefix                   = string
    kubernetes_version           = string
    service_principal_client_id  = string
    service_principal_secret     = string
    resource_group_name          = string
    vnet_id                      = string
    control_plane_subnet_id      = string
    worker_node_subnet_id        = string
  })
  
  description = "Configuration for the AKS cluster"
}
