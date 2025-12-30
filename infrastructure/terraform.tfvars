multi-region-bucket-name = "multi-region-bucket-name"

region = "us-west-2"

dynamodb-table-name = "terraform-state-lock"

# Common tags applied to all resources
common_tags = {
  Environment = "production"
  Project     = "Global-Multi-Region-Web-App"
  ManagedBy   = "Terraform"
  Owner       = "Anant-singh"
}