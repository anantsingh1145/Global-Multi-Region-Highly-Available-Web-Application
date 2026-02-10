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

# VPC details
vpc_name = "multi-region-vpc"
vpc_cidr_block = "10.10.0.0/20"
private_subnet_cidr_block = "10.10.0.0/23"
public_subnet_cidr_block = "10.10.2.0/23"
