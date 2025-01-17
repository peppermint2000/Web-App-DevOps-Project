terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

provider "azurerm" {
  features {}
  client_id       = "1351b19a-d239-495d-9fcc-85f103f44b31"
  client_secret   = "8~D8Q~lebg5A1vn4pHiEbG3RC_f4P3wL4cAlgcXU"
  subscription_id = "e355bb70-1955-46cd-a287-d16e83f17efe"
  tenant_id       = "47d4542c-f112-47f4-92c7-a838d8a5e8ef"
}

module "networking" {
  source = "./networking-module/networking-module"
  azurerm_resource_group = "networking-resource-group"
  resource_group_name = "networking-resource-group"
  location            = "UK South"
  vnet_address_space  = ["10.0.0.0/16"]
}

module "aks_cluster" {
  source = "./networking-module/aks-cluster-module"

  aks_cluster_name              = "terraform-aks-cluster"
  cluster_location              = "UK South"
  dns_prefix                    = "myaks-project"
  kubernetes_version            = "1.26.6"
  service_principal_client_id   = "1351b19a-d239-495d-9fcc-85f103f44b31"
  service_principal_secret      = "8~D8Q~lebg5A1vn4pHiEbG3RC_f4P3wL4cAlgcXU"
  resource_group_name           = module.networking.networking_resource_group_name
  vnet_id                       = module.networking.vnet_id
  control_plane_subnet_id       = module.networking.control_plane_subnet_id
  worker_node_subnet_id         = module.networking.worker_node_subnet_id
  aks_nsg_id                    = module.networking.aks_nsg_id
}
