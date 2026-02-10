resource "aws_subnet" "private_subnet" {
  vpc_id     = aws_vpc.global-multi-region-web-app-vpc.id
  cidr_block = var.private_subnet_cidr_block

  tags = {
    usage = "private"
  }
}

resource "aws_subnet" "public_subnet" {
  vpc_id     = aws_vpc.global-multi-region-web-app-vpc.id
  cidr_block = var.public_subnet_cidr_block

  tags = {
    usage = "public"
  }
}