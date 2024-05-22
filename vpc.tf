resource "digitalocean_vpc" "vpc" {
  name     = local.do_vpc_name
  region   = var.do_region
  ip_range = var.do_vpc_ip_range
}
