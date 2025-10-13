resource "hcloud_network" "this" {
  name     = var.name
  ip_range = var.ip_range_network

  labels                   = var.labels
  delete_protection        = var.delete_protection
  expose_routes_to_vswitch = var.expose_routes_to_vswitch
}

resource "hcloud_network_subnet" "this" {
  network_id   = hcloud_network.this.id
  type         = var.type
  ip_range     = var.ip_range_subnet
  network_zone = var.network_zone

  vswitch_id = var.vswtich_id
}
