# hcloud_network
output "id_network" {
  description = "Unique ID of the network"
  value       = hcloud_network.this.id
}

output "name" {
  description = "Name of the network"
  value       = hcloud_network.this.name
}

output "ip_range_network" {
  description = "IPv4 Prefix of the whole Network"
  value       = hcloud_network.this.ip_range
}

output "labels" {
  description = "User-defined labels (key-value pairs)"
  value       = hcloud_network.this.labels
}

output "delete_protection" {
  description = "Whether delete protection is enabled"
  value       = hcloud_network.this.delete_protection
}

output "expose_routes_to_vswitch" {
  description = "Indicates if the routes from this network should be exposed to the vSwitch connection"
  value       = hcloud_network.this.expose_routes_to_vswitch
}

# hcloud_network_subnet
output "id_subnet" {
  description = "ID of the Network subnet"
  value       = hcloud_network_subnet.this.id
}

output "type" {
  description = "Type of subnet"
  value       = hcloud_network_subnet.this.type
}

output "ip_range_subnet" {
  description = "Range to allocate IPs from"
  value       = hcloud_network_subnet.this.ip_range
}

output "network_zone" {
  description = "Name of network zone"
  value       = hcloud_network_subnet.this.network_zone
}

output "vswitch_id" {
  description = "ID of the vswitch, when type is vswitch"
  value       = hcloud_network_subnet.this.vswitch_id
}
