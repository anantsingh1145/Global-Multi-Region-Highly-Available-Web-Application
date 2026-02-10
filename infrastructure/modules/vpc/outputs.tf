# Outputs from the VPC module
output "vpc_id" {
  description = "ID of the VPC"
  value       = aws_vpc.global-multi-region-web-app-vpc.id
}

output "vpc_cidr_block" {
  description = "CIDR block of the VPC"
  value       = aws_vpc.global-multi-region-web-app-vpc.cidr_block
}

output "private_subnet_id" {
  description = "ID of the private subnet"
  value       = aws_subnet.private_subnet.id
}

output "public_subnet_id" {
  description = "ID of the public subnet"
  value       = aws_subnet.public_subnet.id
}

output "vpc_name" {
  description = "Name of the VPC"
  value       = aws_vpc.global-multi-region-web-app-vpc.tags.Name
}

