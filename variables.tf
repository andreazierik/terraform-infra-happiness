variable "aws_region" {
  type        = string
  default     = "us-east-1"
  description = "Default AWS region"
}

variable "empresa" {
  type        = string
  default     = "blogupper"
  description = "VPC name"
}

variable "aws_azs" {
  type        = list(string)
  default     = ["us-east-1e", "us-east-1f"]
  description = "Default AZs for this configuration"
}

variable "any-ip" {
  type        = string
  default     = "0.0.0.0/0"
  description = "Any external IP"
}

variable "ec2_ami" {
  type        = string
  default     = "ami-0e9107ed11be76fde"
  description = "Amazon Linux 2023 - us-east-1"
}

variable "ec2_type" {
  type        = string
  default     = "t2.micro"
  description = "Free tier instance"
}