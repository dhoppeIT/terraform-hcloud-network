# terraform-hcloud-network

This example will manage the Hetzner Cloud network and creates multiple subnets.

## Graph

<img alt="Graph" src="https://github.com/dhoppeIT/terraform-hcloud-network/blob/main/examples/multiple_subnets/rover.svg?raw=true" width="100%" height="100%">

## Usage

To run this example, you need to execute the following commands:

```shell
$ terraform init
$ terraform plan
$ terraform apply
```

:warning: This example may create resources that cost money. Execute the command
`terraform destroy` when the resources are no longer needed.

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
| <a name="module_hcloud_network"></a> [hcloud\_network](#module\_hcloud\_network) | dhoppeIT/network/hcloud | ~> 0.3 |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_token"></a> [token](#input\_token) | The token used to authenticate with Hetzner Cloud | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_network_id"></a> [network\_id](#output\_network\_id) | Unique ID of the network |
| <a name="output_network_ip_range"></a> [network\_ip\_range](#output\_network\_ip\_range) | IPv4 Prefix of the whole Network |
| <a name="output_network_name"></a> [network\_name](#output\_network\_name) | Name of the network |
| <a name="output_subnet_id"></a> [subnet\_id](#output\_subnet\_id) | ID of the Network subnet |
| <a name="output_subnet_ip_range"></a> [subnet\_ip\_range](#output\_subnet\_ip\_range) | Range to allocate IPs from |
<!-- END_TF_DOCS -->

## Authors

Created and maintained by [Dennis Hoppe](https://github.com/dhoppeIT/).

## License

Apache 2 licensed. See [LICENSE](https://github.com/dhoppeIT/terraform-hcloud-network/blob/main/LICENSE) for full details.
