## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_cloudwatch_log_group.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_group) | resource |
| [aws_lambda_alias.lambda_alias](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_alias) | resource |
| [aws_lambda_function.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_function) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | AWS infrastructure region | `string` | `null` | no |
| <a name="input_environment_variables"></a> [environment\_variables](#input\_environment\_variables) | lambda environment\_variables | `map(string)` | `{}` | no |
| <a name="input_file_name"></a> [file\_name](#input\_file\_name) | filename zip name | `string` | `"null"` | no |
| <a name="input_function_name"></a> [function\_name](#input\_function\_name) | function\_name | `string` | `"null"` | no |
| <a name="input_lambda_alias_name"></a> [lambda\_alias\_name](#input\_lambda\_alias\_name) | lambda\_alias\_name | `string` | `"VLatest"` | no |
| <a name="input_lambda_func_current_version"></a> [lambda\_func\_current\_version](#input\_lambda\_func\_current\_version) | lambda\_func\_current\_version | `string` | `"$LATEST"` | no |
| <a name="input_lambda_func_target_version"></a> [lambda\_func\_target\_version](#input\_lambda\_func\_target\_version) | lambda\_func\_target\_version | `string` | `"$LATEST"` | no |
| <a name="input_lambda_handler"></a> [lambda\_handler](#input\_lambda\_handler) | handler name | `string` | `"index.handler"` | no |
| <a name="input_lambda_role_arn"></a> [lambda\_role\_arn](#input\_lambda\_role\_arn) | lambda\_role\_arn | `string` | `""` | no |
| <a name="input_lambda_runtime"></a> [lambda\_runtime](#input\_lambda\_runtime) | lambda\_runtime | `string` | `"nodejs16.x"` | no |
| <a name="input_retention_in_days"></a> [retention\_in\_days](#input\_retention\_in\_days) | retention\_in\_days | `number` | `14` | no |
| <a name="input_source_code_hash"></a> [source\_code\_hash](#input\_source\_code\_hash) | source\_code\_hash | `string` | `""` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tag map for the resource | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | aws\_lambda\_function arn |
| <a name="output_invoke_arn"></a> [invoke\_arn](#output\_invoke\_arn) | to be used in aws\_api\_gateway\_integration for APIGW |
| <a name="output_name"></a> [name](#output\_name) | function\_name |
