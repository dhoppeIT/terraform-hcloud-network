locals {
  name             = "private"
  ip_range_network = "10.0.0.0/16"

  type            = "cloud"
  ip_range_subnet = ["10.0.0.0/24"]
  network_zone    = "eu-central"
}
