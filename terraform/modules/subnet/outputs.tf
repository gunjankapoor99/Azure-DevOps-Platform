output "subnet_ids" {
  value = {
    for name, subnet in azurerm_subnet.this :
    name => subnet.id
  }
}

output "subnet_names" {
  value = {
    for name, subnet in azurerm_subnet.this :
    name => subnet.name
  }
}
