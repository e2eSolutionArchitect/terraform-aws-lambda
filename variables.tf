# -------------------------------------------
# Common Variables
# -------------------------------------------

variable "aws_region" {
  description = "AWS infrastructure region"
  type        = string
  default     = null
}


variable "tags" {
  description = "Tag map for the resource"
  type        = map(string)
  default     = {}
}


# -------------------------------------------
# Lambda Variables
# -------------------------------------------

variable "file_name" {
  description = "filename zip name"
  type        = string
  default     = "null"
}

variable "function_name" {
  description = "function_name"
  type        = string
  default     = "null"
}

variable "lambda_handler" {
  description = "handler name"
  type        = string
  default     = "index.handler"
}

variable "lambda_runtime" {
  description = "lambda_runtime"
  type        = string
  default     = "nodejs16.x"
}

variable "lambda_role_arn" {
  description = "lambda_role_arn"
  type        = string
  default     = ""
}

variable "lambda_alias_name" {
  description = "lambda_alias_name"
  type        = string
  default     = "VLatest"
}

variable "lambda_func_current_version" {
  description = "lambda_func_current_version"
  type        = string
  default     = "$LATEST"
}

variable "lambda_func_target_version" {
  description = "lambda_func_target_version"
  type        = string
  default     = "$LATEST"
}

variable "source_code_hash" {
  description = "source_code_hash"
  type        = string
  default     = ""
}

variable "environment_variables" {
  description = "lambda environment_variables"
  type        = map(string)
  default     = {}
}

variable "retention_in_days" {
  description = "retention_in_days"
  type        = number
  default     = 14
}