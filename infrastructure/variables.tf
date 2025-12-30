variable "multi-region-bucket-name" {
  type        = string
  description = "The name of the multi-region bucket"
}

variable "region" {
  type        = string
  description = "The region of the multi-region bucket"
}

variable "dynamodb-table-name" {
  type        = string
  description = "The name of the dynamodb table"
}

# Common tags to be applied to all resources
variable "common_tags" {
  type        = map(string)
  description = "Common tags to be applied to all resources"
  default = {
    Environment = "production"
    Project     = "Global-Multi-Region-Web-App"
    ManagedBy   = "Terraform"
  }
}