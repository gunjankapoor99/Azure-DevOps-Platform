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
