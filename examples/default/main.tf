module "hcloud_network" {
  source = "../../"

  name             = "example-network"
  ip_range_network = "10.0.0.0/8"

  type            = "cloud"
  ip_range_subnet = "10.0.1.0/24"
  network_zone    = "eu-central"
}
