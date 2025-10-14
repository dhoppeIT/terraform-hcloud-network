# terraform-hcloud-network

Terraform module to manage the following Hetzner Cloud resources:

* hcloud_network
* hcloud_network_subnet

## Usage

Copy and paste the following code snippet to your Terraform configuration,
specify the required variables and run the command `terraform init`.

```hcl
module "hcloud_network" {
  source  = "gitlab.com/terraform-child-modules-48151/terraform-hcloud-network/local"
  version = "1.0.0"

  name             = "example-network"
  ip_range_network = "10.0.0.0/8"

  type            = "cloud"
  network_zone    = "eu-central"
  ip_range_subnet = "10.0.1.0/24"
}

```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_hcloud"></a> [hcloud](#requirement\_hcloud) | ~> 1.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_hcloud"></a> [hcloud](#provider\_hcloud) | ~> 1.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [hcloud_network.this](https://registry.terraform.io/providers/hetznercloud/hcloud/latest/docs/resources/network) | resource |
| [hcloud_network_subnet.this](https://registry.terraform.io/providers/hetznercloud/hcloud/latest/docs/resources/network_subnet) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_delete_protection"></a> [delete\_protection](#input\_delete\_protection) | Enable or disable delete protection | `bool` | `false` | no |
| <a name="input_expose_routes_to_vswitch"></a> [expose\_routes\_to\_vswitch](#input\_expose\_routes\_to\_vswitch) | Enable or disable exposing the routes to the vSwitch connection | `bool` | `false` | no |
| <a name="input_ip_range_network"></a> [ip\_range\_network](#input\_ip\_range\_network) | IP Range of the whole Network which must span all included subnets and route destinations | `string` | n/a | yes |
| <a name="input_ip_range_subnet"></a> [ip\_range\_subnet](#input\_ip\_range\_subnet) | Range to allocate IPs from | `string` | n/a | yes |
| <a name="input_labels"></a> [labels](#input\_labels) | User-defined labels (key-value pairs) should be created with | `map(string)` | `{}` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the Network to create | `string` | n/a | yes |
| <a name="input_network_zone"></a> [network\_zone](#input\_network\_zone) | Name of network zone | `string` | n/a | yes |
| <a name="input_type"></a> [type](#input\_type) | Type of subnet | `string` | n/a | yes |
| <a name="input_vswtich_id"></a> [vswtich\_id](#input\_vswtich\_id) | ID of the vswitch, Required if type is vswitch | `number` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_delete_protection"></a> [delete\_protection](#output\_delete\_protection) | Whether delete protection is enabled |
| <a name="output_expose_routes_to_vswitch"></a> [expose\_routes\_to\_vswitch](#output\_expose\_routes\_to\_vswitch) | Indicates if the routes from this network should be exposed to the vSwitch connection |
| <a name="output_id_network"></a> [id\_network](#output\_id\_network) | Unique ID of the network |
| <a name="output_id_subnet"></a> [id\_subnet](#output\_id\_subnet) | ID of the Network subnet |
| <a name="output_ip_range_network"></a> [ip\_range\_network](#output\_ip\_range\_network) | IPv4 Prefix of the whole Network |
| <a name="output_ip_range_subnet"></a> [ip\_range\_subnet](#output\_ip\_range\_subnet) | Range to allocate IPs from |
| <a name="output_labels"></a> [labels](#output\_labels) | User-defined labels (key-value pairs) |
| <a name="output_name"></a> [name](#output\_name) | Name of the network |
| <a name="output_network_zone"></a> [network\_zone](#output\_network\_zone) | Name of network zone |
| <a name="output_type"></a> [type](#output\_type) | Type of subnet |
| <a name="output_vswitch_id"></a> [vswitch\_id](#output\_vswitch\_id) | ID of the vswitch, when type is vswitch |
<!-- END_TF_DOCS -->

## Authors

Created and maintained by [Dennis Hoppe](https://gitlab.com/dhoppeIT).

## License

Apache 2 licensed. See [LICENSE](LICENSE) for full details.
