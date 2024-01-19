variable "name" {
  type        = string
  description = "Blogupper"
}

variable "vpc-id" {
  type        = string
  description = "Default VPC"
}

variable "any-ip" {
  type        = string
  description = "Any external IP"
}

variable "sg-name" {
  type        = string
  default     = "sg"
  description = "Default SG for EC2 instance"
}

variable "bu_ec2_ami" {
  type        = string
  description = "AMI for EC2 instances"
}

variable "bu_ec2_type" {
  type        = string
  description = "AMI for EC2 instances"
}

variable "bu_subnet" {
  type        = string
  description = "Public subnet for EC2"
}

variable "bu_ssh_key" {
  type        = string
  default     = "estudos"
  description = "Default SSH key"
}