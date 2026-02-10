resource "aws_nat_gateway" "global-multi-region-web-app-nat-gateway" {
  allocation_id = "${aws_eip.one.id}"
  subnet_id     = "${aws_subnet.public_subnet.id}"

  tags = {
    Name = "global-multi-region-web-app-nat-gateway"
  }

  depends_on = [aws_internet_gateway.global-multi-region-web-app-igw]
}