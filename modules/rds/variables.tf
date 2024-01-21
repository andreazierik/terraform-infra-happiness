variable "vpc-id" {
  type        = string
  description = "Default VPC"
}

variable "ec2_sg" {
  type        = string
  description = "EC2 SG"
}

variable "instance_name" {
  type        = string
  description = "VPC name"
}

variable "private-subnet" {
  type        = list(string)
  description = "AWS private sutnet"
}