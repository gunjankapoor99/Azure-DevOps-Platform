module "resource_group" {
  source = "../../modules/resource-group"

  resource_group_name = var.resource_group_name
  location            = var.location
  tags                = var.tags
}

module "network" {
  source = "../../modules/network"

  vnet_name           = var.vnet_name
  location            = var.location
  resource_group_name = module.resource_group.resource_group_name

  address_space = var.address_space

  tags = var.tags
}


module "subnet" {

  source = "../../modules/subnet"

  resource_group_name = module.resource_group.resource_group_name

  virtual_network_name = module.network.vnet_name

  subnets = var.subnets

}

module "acr" {

  source = "../../modules/acr"

  acr_name            = var.acr_name
  resource_group_name = module.resource_group.resource_group_name
  location            = var.location
  sku                 = var.acr_sku
  tags                = var.tags
}

module "network_security_group" {

  source = "../../modules/nsg"

  nsg_name            = var.nsg_name
  location            = var.location
  resource_group_name = module.resource_group.resource_group_name
  tags                = var.tags
}

#module "nsg_association" {

#  source = "../../modules/nsg-association"

#  subnet_id = module.subnet.subnet_ids["aks"]

#  network_security_group_id = module.network_security_group.nsg_id
#}
