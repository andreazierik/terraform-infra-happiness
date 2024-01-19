<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~>5.32.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_ec2"></a> [ec2](#module\_ec2) | ./modules/ec2 | n/a |
| <a name="module_vpc"></a> [vpc](#module\_vpc) | ./modules/vpc | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_any-ip"></a> [any-ip](#input\_any-ip) | Any external IP | `string` | `"0.0.0.0/0"` | no |
| <a name="input_aws_azs"></a> [aws\_azs](#input\_aws\_azs) | Default AZs for this configuration | `list(string)` | <pre>[<br>  "us-east-1e",<br>  "us-east-1f"<br>]</pre> | no |
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | Default AWS region | `string` | `"us-east-1"` | no |
| <a name="input_empresa"></a> [empresa](#input\_empresa) | VPC name | `string` | `"blogupper"` | no |
<!-- END_TF_DOCS -->