# Example

The configuration in this directory creates:

* hcloud_network
* hcloud_network_subnet

## Usage

To run this example, you need to execute the following commands:

```shell
terraform init
terraform plan
terraform apply
```

:warning: This example may create resources that cost money. Execute the
command `terraform destroy` when the resources are no longer needed.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_hcloud"></a> [hcloud](#requirement\_hcloud) | ~> 1.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_hcloud_network"></a> [hcloud\_network](#module\_hcloud\_network) | ../../ | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_endpoint"></a> [endpoint](#input\_endpoint) | Hetzner Cloud API endpoint, can be used to override the default API Endpoint | `string` | `"https://api.hetzner.cloud/v1"` | no |
| <a name="input_poll_function"></a> [poll\_function](#input\_poll\_function) | Configures the type of function to be used during the polling | `string` | `"exponential"` | no |
| <a name="input_poll_interval"></a> [poll\_interval](#input\_poll\_interval) | Configures the interval in which actions are polled by the client | `string` | `"500ms"` | no |
| <a name="input_token"></a> [token](#input\_token) | This is the Hetzner Cloud API Token, can also be specified with the HCLOUD\_TOKEN environment variable | `string` | n/a | yes |

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
