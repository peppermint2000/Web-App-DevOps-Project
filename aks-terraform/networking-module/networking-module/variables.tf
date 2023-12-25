variable "resource_group_name" {
    description="resource group where storage account will be created "
    type = string
} 

variable "azurerm_resource_group" {
  description = "Name of the Azure Resource Group"
  type        = string
}

variable "location" {
  description = "The Azure region where the resources will be deployed."
  type        = string
  default     = "UK South"
}

variable "vnet_address_space" {
  description = "VNet specifies the address space for the VNet in the main config file."
  type        = list(string)
}

