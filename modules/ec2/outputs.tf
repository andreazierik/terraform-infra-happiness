output "public-ip" {
  value = aws_instance.bu_ec2[*].public_ip
}

output "sg-id" {
  value = aws_security_group.bu_default_sg.id
}