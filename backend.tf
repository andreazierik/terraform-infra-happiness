terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>5.32.0"
    }
  }

  # backend "s3" {
  #   bucket = "blogupper-ofinina-projetos-grupo1"
  #   key = "bloguper/terraform.tfstate"
  #   region = var.aws_region
  #   encrypt = true
  #   dynamodb_table = "terraform_default_lock_table"
  # }
}

provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      provisioner = "Terraform"
    }
  }
}