output "aks_cluster_name" {
  value       = azurerm_kubernetes_cluster.aks.name
  description = "Name of AKS cluster"
}

output "aks_cluster_id" {
  value       = azurerm_kubernetes_cluster.aks.id
  description = "ID of AKS cluster"
}

output "aks_kubeconfig" {
  value = azurerm_kubernetes_cluster.aks.kube_config.0.raw_kube_config
  description = "Kubeconfig file for AKS cluster"
}