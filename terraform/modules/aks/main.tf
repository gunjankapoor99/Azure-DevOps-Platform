resource "azurerm_kubernetes_cluster" "this" {

  name                = var.aks_name
  location            = var.location
  resource_group_name = var.resource_group_name

  dns_prefix = var.dns_prefix

  kubernetes_version = var.kubernetes_version

  sku_tier = "Free"

  # Production-grade identity features
  # oidc_issuer_enabled       = true
  # workload_identity_enabled = true

  role_based_access_control_enabled = true

  # azure_active_directory_role_based_access_control {
  #  azure_rbac_enabled = true
  # }

  default_node_pool {

    name = "system"

    vm_size = var.vm_size

    node_count = 1

    vnet_subnet_id = var.subnet_id

    os_disk_size_gb = 64

    type = "VirtualMachineScaleSets"

    #auto_scaling_enabled = true
    #min_count            = 1
    #max_count            = 3

    node_labels = {
      "nodepool-type" = "system"
      "environment"   = "dev"
    }
  }

  identity {
    type = "SystemAssigned"
  }

  network_profile {

    network_plugin      = "kubenet"
    
    service_cidr   = "172.16.0.0/16"
    dns_service_ip = "172.16.0.10"

    load_balancer_sku = "standard"
  }

  #oms_agent {

  # log_analytics_workspace_id = var.log_analytics_workspace_id
  #}

  tags = var.tags
}
