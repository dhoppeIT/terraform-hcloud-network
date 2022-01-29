# terraform-hcloud-network

Terraform module to manage the Hetzner Cloud resources (hcloud_network, hcloud_network_subnet).

## Graph

<img alt="Graph" src="https://github.com/dhoppeIT/terraform-hcloud-network/blob/main/rover.svg?raw=true" width="100%" height="100%">

## Usage

Copy and paste into your Terraform configuration, insert the variables and run ```terraform init```:

**Create one network subnet:**

```hcl
module "hcloud_network" {
  source = "dhoppeIT/network/hcloud"

  name             = "private"
  ip_range_network = "10.0.0.0/16"

  type            = "cloud"
  ip_range_subnet = ["10.0.0.0/24"]
  network_zone    = "eu-central"
}
```

**Create multiple network subnets:**

```hcl
module "hcloud_network" {
  source = "dhoppeIT/network/hcloud"

  name             = "private"
  ip_range_network = "10.0.0.0/16"

  type            = "cloud"
  ip_range_subnet = [
    "10.0.10.0/24",
    "10.0.20.0/24",
    "10.0.30.0/24"
  ]
  network_zone    = "eu-central"
}
```

<!--- BEGIN_TF_DOCS --->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_hcloud"></a> [hcloud](#requirement\_hcloud) | >= 1.0.0, < 2.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_hcloud"></a> [hcloud](#provider\_hcloud) | 1.32.2 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [hcloud_network.default](https://registry.terraform.io/providers/hetznercloud/hcloud/latest/docs/resources/network) | resource |
| [hcloud_network_subnet.default](https://registry.terraform.io/providers/hetznercloud/hcloud/latest/docs/resources/network_subnet) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_delete_protection"></a> [delete\_protection](#input\_delete\_protection) | Enable or disable delete protection | `bool` | `false` | no |
| <a name="input_ip_range_network"></a> [ip\_range\_network](#input\_ip\_range\_network) | IP Range of the whole Network which must span all included subnets and route destinations | `string` | n/a | yes |
| <a name="input_ip_range_subnet"></a> [ip\_range\_subnet](#input\_ip\_range\_subnet) | Range to allocate IPs from | `list(string)` | n/a | yes |
| <a name="input_labels"></a> [labels](#input\_labels) | User-defined labels (key-value pairs) should be created with | `map(string)` | `{}` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the Network to create | `string` | n/a | yes |
| <a name="input_network_zone"></a> [network\_zone](#input\_network\_zone) | Name of network zone | `string` | n/a | yes |
| <a name="input_type"></a> [type](#input\_type) | Type of subnet | `string` | n/a | yes |
| <a name="input_vswitch_id"></a> [vswitch\_id](#input\_vswitch\_id) | ID of the vswitch | `number` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id_network"></a> [id\_network](#output\_id\_network) | Unique ID of the network |
| <a name="output_id_subnet"></a> [id\_subnet](#output\_id\_subnet) | ID of the Network subnet |
| <a name="output_ip_range_network"></a> [ip\_range\_network](#output\_ip\_range\_network) | IPv4 Prefix of the whole Network |
| <a name="output_ip_range_subnet"></a> [ip\_range\_subnet](#output\_ip\_range\_subnet) | Range to allocate IPs from |
| <a name="output_name"></a> [name](#output\_name) | Name of the network |

<!--- END_TF_DOCS --->

## Authors

Created and maintained by [Dennis Hoppe](https://github.com/dhoppeIT/).

## License

Apache 2 licensed. See [LICENSE](https://github.com/dhoppeIT/terraform-hcloud-network/blob/main/LICENSE) for full details.
