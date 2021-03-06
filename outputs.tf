output "name" {
  description = "Name of the network"
  value       = hcloud_network.default.name
}

output "id_network" {
  description = "Unique ID of the network"
  value       = hcloud_network.default.id
}

output "ip_range_network" {
  description = "IPv4 Prefix of the whole Network"
  value       = hcloud_network.default.ip_range
}

output "id_subnet" {
  description = "ID of the Network subnet"
  value       = [for subnet in hcloud_network_subnet.default : subnet.id]
}

output "ip_range_subnet" {
  description = "Range to allocate IPs from"
  value       = [for subnet in hcloud_network_subnet.default : subnet.ip_range]
}
