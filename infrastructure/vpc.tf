# Module block to create VPC and subnets using the VPC module
module "vpc" {
  source = "./modules/vpc"

  # Pass required variables to the module
  vpc_cidr_block           = var.vpc_cidr_block
  private_subnet_cidr_block = var.private_subnet_cidr_block
  public_subnet_cidr_block  = var.public_subnet_cidr_block
  vpc_name                  = var.vpc_name
}

