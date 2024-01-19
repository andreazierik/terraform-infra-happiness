module "ec2" {
  source      = "./modules/ec2"
  name        = var.empresa
  vpc-id      = module.vpc.vpc-id
  any-ip      = var.any-ip
  bu_ec2_ami  = var.ec2_ami
  bu_ec2_type = var.ec2_type
  bu_subnet   = module.vpc.public_subnet
}

module "vpc" {
  source = "./modules/vpc"
  any-ip = var.any-ip
  azs    = var.aws_azs
  name   = var.empresa
}