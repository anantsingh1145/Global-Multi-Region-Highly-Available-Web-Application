resource "aws_network_interface" "global-multi-region-web-app-network-interface" {
  subnet_id   = aws_subnet.public_subnet.id
  private_ips = ["10.0.0.10", "10.0.0.11"]
}

resource "aws_eip" "one" {
  domain                   = "vpc"
  network_interface         = aws_network_interface.global-multi-region-web-app-network-interface.id
  associate_with_private_ip = "10.0.0.10"
}

resource "aws_eip" "two" {
  domain                   = "vpc"
  network_interface         = aws_network_interface.global-multi-region-web-app-network-interface.id
  associate_with_private_ip = "10.0.0.11"
}