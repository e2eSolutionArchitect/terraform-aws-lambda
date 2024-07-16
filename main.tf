resource "aws_lambda_function" "this" {

  filename         = var.file_name         #"lambda_function_upload.zip"
  function_name    = var.function_name     #"lambda_function_name"
  role             = aws_iam_role.this.arn #var.lambda_role_arn
  handler          = var.lambda_handler    #"index.handler"
  source_code_hash = var.source_code_hash
  publish          = true
  runtime          = var.lambda_runtime

  dynamic "environment" {
    for_each = length(keys(var.environment_variables)) == 0 ? [] : [true]
    content {
      variables = var.environment_variables
    }
  }

  # environment {
  #   variables = {
  #     S3_BUCKET = "s3-bucket-name-enter-here"
  #   }
  # }
  depends_on = [aws_iam_role.this]
}


resource "aws_lambda_alias" "lambda_alias" {
  name             = var.lambda_alias_name
  description      = "Alias for latest version"
  function_name    = aws_lambda_function.this.arn
  function_version = var.lambda_func_target_version

  # routing_config {
  #   additional_version_weights = {
  #     "2" = 0.5
  #   }
  # }
  depends_on = [aws_lambda_function.this]
}

resource "aws_iam_role" "this" {
  name = "iam-${var.function_name}"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}

resource "aws_cloudwatch_log_group" "this" {
  name              = "/aws/lambda/${var.function_name}"
  retention_in_days = var.retention_in_days
}

# aws_lambda_event_source_mapping
# The aws_lambda_event_source_mapping resource creates a mapping between an event source and a Lambda function. It configures the ARN of the event source that triggers the Lambda function. It also defines the properties to control the behaviour to trigger the function.

# Below is a Terraform AWS example of a DynamoDB event source:

#  resource "aws_lambda_event_source_mapping" "DynamoDBExample" {
#   event_source_arn  = aws_dynamodb_table.dynamodbexample.stream_arn
#   function_name     = aws_lambda_function.dynamodbexample.arn
#   starting_position = "LATEST"
# }