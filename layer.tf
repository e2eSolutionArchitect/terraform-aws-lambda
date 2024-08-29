resource "aws_lambda_layer_version" "version" {
	  layer_name       = var.layer_name
	  description      = var.layer_name
	  s3_bucket        = var.s3_bucket_id
	  s3_key           = var.s3_layer_key
	  #source_code_hash = var.layer_source_code_hash
	  compatible_runtimes = [var.lambda_runtime]
}


