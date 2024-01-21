output "vpc-id" {
  value = aws_vpc.bu_vpc.id
}

output "public_subnet" {
  value = aws_subnet.bu_public_subnets[1].id
}

output "private_subnet" {
  value = aws_subnet.bu_private_subnets[*].id
}