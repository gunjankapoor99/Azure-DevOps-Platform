variable "resource_group_name" {
  description = "Azure Resource Group Name"
  type        = string
}

variable "location" {
  description = "Azure Region"
  type        = string
}

variable "tags" {
  description = "Tags"

  type = map(string)
}


variable "vnet_name" {
  description = "Virtual Network Name"
  type        = string
}

variable "address_space" {
  description = "Address Space"

  type = list(string)
}


variable "subnets" {

  description = "Subnet Configuration"

  type = map(object({

    address_prefix = string

  }))

}

variable "acr_name" {
  type = string
}

variable "acr_sku" {
  type    = string
  default = "Basic"
}
variable "nsg_name" {
  type = string
}

variable "workspace_name" {
  type = string
}

variable "workspace_sku" {
  type    = string
  default = "PerGB2018"
}

variable "retention_in_days" {
  type    = number
  default = 30
}

variable "app_insights_name" {
  type = string
}

variable "key_vault_name" {
  type = string
}

variable "tenant_id" {
  type = string
}

variable "aks_name" {
  description = "AKS Cluster Name"
  type        = string
}

variable "dns_prefix" {
  description = "DNS Prefix"
  type        = string
}

variable "kubernetes_version" {
  description = "AKS Kubernetes Version"
  type        = string
}

variable "node_count" {
  description = "Default Node Count"
  type        = number
}

variable "vm_size" {
  description = "AKS Node VM Size"
  type        = string
}
