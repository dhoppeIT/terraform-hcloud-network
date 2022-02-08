output "network_name" {
  description = "Name of the network"
  value       = module.hcloud_network.name
}

output "network_id" {
  description = "Unique ID of the network"
  value       = module.hcloud_network.id_network
}

output "network_ip_range" {
  description = "IPv4 Prefix of the whole Network"
  value       = module.hcloud_network.ip_range_network
}

output "subnet_id" {
  description = "ID of the Network subnet"
  value       = module.hcloud_network.id_subnet
}

output "subnet_ip_range" {
  description = "Range to allocate IPs from"
  value       = module.hcloud_network.ip_range_subnet
}
