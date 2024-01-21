module "ec2" {
  source      = "./modules/ec2"
  name        = var.empresa
  vpc-id      = module.vpc.vpc-id
  any-ip      = var.any-ip
  bu_ec2_ami  = var.ec2_ami
  bu_ec2_type = var.ec2_type
  bu_subnet   = module.vpc.public_subnet
}

module "rds" {
  source         = "./modules/rds"
  vpc-id         = module.vpc.vpc-id
  ec2_sg         = module.ec2.sg-id
  instance_name  = var.empresa
  private-subnet = module.vpc.private_subnet
}

module "route53" {
  source        = "./modules/route53"
  ec2-public-ip = module.ec2.public-ip
}

module "s3" {
  source = "./modules/s3"
  name   = var.empresa
}

module "vpc" {
  source = "./modules/vpc"
  any-ip = var.any-ip
  azs    = var.aws_azs
  name   = var.empresa
}