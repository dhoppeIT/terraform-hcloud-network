resource "hcloud_network" "default" {
  name              = var.name
  ip_range          = var.ip_range_network
  labels            = var.labels
  delete_protection = var.delete_protection
}

resource "hcloud_network_subnet" "default" {
  for_each = toset(var.ip_range_subnet)

  network_id   = hcloud_network.default.id
  type         = var.type
  ip_range     = each.value
  network_zone = var.network_zone
  vswitch_id   = var.vswitch_id
}
