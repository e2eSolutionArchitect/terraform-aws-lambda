output "arn" {
  description = "aws_lambda_function arn"
  value       = try(aws_lambda_function.this.arn, "")
}

output "invoke_arn" {
  description = "to be used in aws_api_gateway_integration for APIGW"
  value       = try(aws_lambda_function.this.invoke_arn, "")
}

output "name" {
  description = "function_name"
  value       = try(var.function_name, "")
}