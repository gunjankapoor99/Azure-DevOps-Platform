output "resource_group_name" {
  value = module.resource_group.resource_group_name
}

output "resource_group_id" {
  value = module.resource_group.resource_group_id
}

output "vnet_name" {
  value = module.network.vnet_name
}

output "vnet_id" {
  value = module.network.vnet_id
}

output "subnet_ids" {

  value = module.subnet.subnet_ids

}

output "acr_name" {
  value = module.acr.acr_name
}

output "acr_login_server" {
  value = module.acr.login_server
}

output "workspace_name" {
  value = module.log_analytics.workspace_name
}

output "workspace_id" {
  value = module.log_analytics.workspace_id
}


output "application_insights_name" {
  value = module.application_insights.application_insights_name
}
