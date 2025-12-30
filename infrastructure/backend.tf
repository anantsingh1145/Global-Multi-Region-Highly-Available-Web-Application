terraform {
  backend "s3" {
    # S3 bucket for storing Terraform state file
    # NOTE: Must use literal value, not resource reference or variable
    # The bucket name must match the one in terraform.tfvars
    bucket = "multi-region-bucket-name"

    # Path to the state file within the bucket
    key = "terraform.tfstate"

    # AWS region where the S3 bucket and DynamoDB table are located
    region = "us-west-2"

    # Enable server-side encryption for the state file
    encrypt = true

    use_lockfile = true


    # Optional: Use KMS key for encryption (uncomment and set if needed)
    # kms_key_id = "arn:aws:kms:us-west-2:123456789012:key/12345678-1234-1234-1234-123456789012"
  }
}

