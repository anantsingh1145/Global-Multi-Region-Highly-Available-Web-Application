resource "aws_route_table" "public-route-table" {
  vpc_id = "${aws_vpc.global-multi-region-web-app-vpc.id}"

  route {
    cidr_block = var.public_subnet_cidr_block
    gateway_id = "${aws_internet_gateway.global-multi-region-web-app-igw.id}"
  }

  tags = {
    Name = "global-multi-region-web-app-public-route-table"
  }
}

resource "aws_route_table" "private-route-table" {
  vpc_id = "${aws_vpc.global-multi-region-web-app-vpc.id}"

  route {
    cidr_block = var.private_subnet_cidr_block
    nat_gateway_id = "${aws_nat_gateway.global-multi-region-web-app-nat-gateway.id}"
  }

  tags = {
    Name = "global-multi-region-web-app-private-route-table"
  }
}