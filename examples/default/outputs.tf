# hcloud_network
output "id_network" {
  description = "Unique ID of the network"
  value       = module.hcloud_network.id_network
}

output "name" {
  description = "Name of the network"
  value       = module.hcloud_network.name
}

output "ip_range_network" {
  description = "IPv4 Prefix of the whole Network"
  value       = module.hcloud_network.ip_range_network
}

output "labels" {
  description = "User-defined labels (key-value pairs)"
  value       = module.hcloud_network.labels
}

output "delete_protection" {
  description = "Whether delete protection is enabled"
  value       = module.hcloud_network.delete_protection
}

output "expose_routes_to_vswitch" {
  description = "Indicates if the routes from this network should be exposed to the vSwitch connection"
  value       = module.hcloud_network.expose_routes_to_vswitch
}

# hcloud_network_subnet
output "id_subnet" {
  description = "ID of the Network subnet"
  value       = module.hcloud_network.id_subnet
}

output "type" {
  description = "Type of subnet"
  value       = module.hcloud_network.type
}

output "ip_range_subnet" {
  description = "Range to allocate IPs from"
  value       = module.hcloud_network.ip_range_subnet
}

output "network_zone" {
  description = "Name of network zone"
  value       = module.hcloud_network.network_zone
}

output "vswitch_id" {
  description = "ID of the vswitch, when type is vswitch"
  value       = module.hcloud_network.vswitch_id
}
