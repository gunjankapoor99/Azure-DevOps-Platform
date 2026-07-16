output "subnet_ids" {

  description = "Subnet IDs"

  value = {
    for name, subnet in azurerm_subnet.this :
    name => subnet.id
  }
}

output "subnet_names" {

  description = "Subnet Names"

  value = {
    for name, subnet in azurerm_subnet.this :
    name => subnet.name
  }
}
