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
