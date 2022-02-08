module "hcloud_network" {
  source  = "dhoppeIT/network/hcloud"
  version = "~> 0.3"

  name             = local.name
  ip_range_network = local.ip_range_network

  type            = local.type
  ip_range_subnet = local.ip_range_subnet
  network_zone    = local.network_zone
}
