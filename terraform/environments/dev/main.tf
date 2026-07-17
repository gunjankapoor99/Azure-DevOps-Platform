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

module "aks" {

  source = "../../modules/aks"

  aks_name            = var.aks_name
  location            = var.location
  resource_group_name = module.resource_group.resource_group_name

  dns_prefix = var.dns_prefix

  kubernetes_version = var.kubernetes_version

  node_count = var.node_count

  vm_size = var.vm_size

  subnet_id = module.subnet.subnet_ids["aks"]

  log_analytics_workspace_id = module.log_analytics.workspace_id

  tags = var.tags
}
#module "nsg_association" {

#  source = "../../modules/nsg-association"

#  subnet_id = module.subnet.subnet_ids["aks"]

#  network_security_group_id = module.network_security_group.nsg_id
#}


module "log_analytics" {

  source = "../../modules/log-analytics"

  workspace_name      = var.workspace_name
  resource_group_name = module.resource_group.resource_group_name
  location            = var.location

  sku               = var.workspace_sku
  retention_in_days = var.retention_in_days

  tags = var.tags
}


module "application_insights" {

  source = "../../modules/application-insights"

  app_insights_name   = var.app_insights_name
  resource_group_name = module.resource_group.resource_group_name
  location            = var.location

  workspace_id = module.log_analytics.workspace_id

  tags = var.tags
}

module "key_vault" {

  source = "../../modules/key-vault"

  key_vault_name      = var.key_vault_name
  resource_group_name = module.resource_group.resource_group_name
  location            = var.location

  tenant_id = var.tenant_id

  tags = var.tags
}
