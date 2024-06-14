resource "digitalocean_kubernetes_cluster" "cluster" {
  name                 = format("%s-cluster", "tourissmo-${var.do_environment}")
  region               = var.do_region
  version              = var.doks_version
  vpc_uuid             = digitalocean_vpc.vpc.id
  auto_upgrade         = var.doks_auto_upgrade
  surge_upgrade        = var.doks_surge_upgrade
  ha                   = var.doks_ha
  registry_integration = var.doks_registry_integration


  maintenance_policy {
    day        = var.doks_maintenance_policy.day
    start_time = var.doks_maintenance_policy.start_time
  }

  node_pool {
    name       = "tourissmo-${var.do_environment}-pool"
    size       = var.do_size
    node_count = var.doks_node_count
    auto_scale = var.doks_auto_scale
    min_nodes  = 1
    max_nodes  = 3
    tags       = local.do_tags
  }
}
