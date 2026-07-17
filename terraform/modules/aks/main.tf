resource "azurerm_kubernetes_cluster" "this" {

  name                = var.aks_name
  location            = var.location
  resource_group_name = var.resource_group_name

  dns_prefix = var.dns_prefix

  kubernetes_version = var.kubernetes_version

  sku_tier = "Free"

  default_node_pool {

    name = "system"

    node_count = var.node_count

    vm_size = var.vm_size

    vnet_subnet_id = var.subnet_id
  }
  
  network_profile {
    network_plugin = "azure"
    network_plugin_mode = "overlay"

    service_cidr = "172.16.0.0/16"
    dns_service_ip = "172.16.0.10"

    load_balancer_sku = "standard"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = var.tags
}

