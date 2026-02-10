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
    Environment = "dev"
    Project     = "Global-Multi-Region-Web-App"
    ManagedBy   = "Terraform"
    Owner       = "Anant-singh"
  }
}

variable "vpc_cidr_block" {
  type        = string
  description = "The CIDR block for the VPC"
}

variable "private_subnet_cidr_block" {
  type        = string
  description = "The CIDR block for the private subnet"
}

variable "public_subnet_cidr_block" {
  type        = string
  description = "The CIDR block for the public subnet"
}

variable "vpc_name" {
  type        = string
  description = "The name of the VPC"
}