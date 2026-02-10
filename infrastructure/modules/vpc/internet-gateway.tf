resource "aws_internet_gateway" "global-multi-region-web-app-igw" {
  vpc_id = "${aws_vpc.global-multi-region-web-app-vpc.id}"

  tags = {
    Name = "global-multi-region-web-app-igw"
  }
}