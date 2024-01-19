output "public-ip" {
  value = aws_instance.bu_ec2[*].public_ip
}