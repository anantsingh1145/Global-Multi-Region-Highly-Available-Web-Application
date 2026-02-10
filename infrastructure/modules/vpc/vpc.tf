resource "aws_vpc" "global-multi-region-web-app-vpc" {
  cidr_block       = var.vpc_cidr_block
  

  tags = {
    Created-by = "anant-singh"
    Name = var.vpc_name
  }
}