variable "resource_group_name" {
  description = "Azure Resource Group Name"
  type        = string
}

variable "location" {
  description = "Azure Region"
  type        = string
}

variable "tags" {
  description = "Tags applied to resources"
  type        = map(string)

  default = {
    Project     = "Azure-DevOps-Platform"
    Environment = "Development"
    ManagedBy   = "Terraform"
  }
}
