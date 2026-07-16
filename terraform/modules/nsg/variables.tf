variable "nsg_name" {
  description = "Network Security Group name"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "resource_group_name" {
  description = "Resource Group"
  type        = string
}

variable "tags" {
  description = "Tags"
  type        = map(string)
}
