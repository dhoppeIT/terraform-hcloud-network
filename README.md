# terraform-hcloud-network

Terraform module to manage the Hetzner Cloud resources (hcloud_network, hcloud_network_subnet).

## Graph

![Graph](https://github.com/dhoppeIT/terraform-hcloud-network/blob/main/rover.png)

## Usage

Copy and paste into your Terraform configuration, insert the variables and run ```terraform init```:

```hcl
module "FIXME" {
  source = "dhoppeIT/network/hcloud"

  name             = "private"
  ip_range_network = "10.0.0.0/16"

  type            = "cloud"
  ip_range_subnet = "10.0.0.0/24"
  network_zone    = "eu-central"
}
```

<!--- BEGIN_TF_DOCS --->
<!--- END_TF_DOCS --->

## Authors

Created and maintained by [Dennis Hoppe](https://github.com/dhoppeIT/).

## License

Apache 2 licensed. See [LICENSE](https://github.com/dhoppeIT/terraform-hcloud-network/blob/main/LICENSE) for full details.
