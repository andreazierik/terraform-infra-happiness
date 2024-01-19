<!-- BEGIN_TF_DOCS -->


## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_instance.bu_ec2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |
| [aws_security_group.bu_default_sg](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_security_group_rule.bu_default_sg_rule_http](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule) | resource |
| [aws_security_group_rule.bu_default_sg_rule_ssh](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_any-ip"></a> [any-ip](#input\_any-ip) | Any external IP | `string` | n/a | yes |
| <a name="input_bu_ec2_ami"></a> [bu\_ec2\_ami](#input\_bu\_ec2\_ami) | AMI for EC2 instances | `string` | n/a | yes |
| <a name="input_bu_ec2_type"></a> [bu\_ec2\_type](#input\_bu\_ec2\_type) | AMI for EC2 instances | `string` | n/a | yes |
| <a name="input_bu_ssh_key"></a> [bu\_ssh\_key](#input\_bu\_ssh\_key) | Default SSH key | `string` | `"estudos"` | no |
| <a name="input_bu_subnet"></a> [bu\_subnet](#input\_bu\_subnet) | Public subnet for EC2 | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Blogupper | `string` | n/a | yes |
| <a name="input_sg-name"></a> [sg-name](#input\_sg-name) | Default SG for EC2 instance | `string` | `"sg"` | no |
| <a name="input_vpc-id"></a> [vpc-id](#input\_vpc-id) | Default VPC | `string` | n/a | yes |
<!-- END_TF_DOCS -->