locals {
  name             = "private"
  ip_range_network = "10.0.0.0/16"

  type = "cloud"
  ip_range_subnet = [
    "10.0.10.0/24",
    "10.0.20.0/24",
    "10.0.30.0/24"
  ]
  network_zone = "eu-central"
}
