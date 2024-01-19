<!-- BEGIN_TF_DOCS -->


## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_security_group.bu_default_sg](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_any-ip"></a> [any-ip](#input\_any-ip) | Any external IP | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | VPC name | `string` | n/a | yes |
| <a name="input_sg-name"></a> [sg-name](#input\_sg-name) | Default SG for EC2 instance | `string` | `"sg"` | no |
| <a name="input_vpc-id"></a> [vpc-id](#input\_vpc-id) | Default VPC | `string` | n/a | yes |
<!-- END_TF_DOCS -->