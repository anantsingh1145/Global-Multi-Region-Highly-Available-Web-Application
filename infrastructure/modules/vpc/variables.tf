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