<!-- BEGIN_TF_DOCS -->


## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_db_instance.db_instance](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_instance) | resource |
| [aws_db_subnet_group.database_subnet_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_subnet_group) | resource |
| [aws_security_group.database_security_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ec2_sg"></a> [ec2\_sg](#input\_ec2\_sg) | EC2 SG | `string` | n/a | yes |
| <a name="input_instance_name"></a> [instance\_name](#input\_instance\_name) | VPC name | `string` | n/a | yes |
| <a name="input_private-subnet"></a> [private-subnet](#input\_private-subnet) | AWS private sutnet | `list(string)` | n/a | yes |
| <a name="input_vpc-id"></a> [vpc-id](#input\_vpc-id) | Default VPC | `string` | n/a | yes |
<!-- END_TF_DOCS -->