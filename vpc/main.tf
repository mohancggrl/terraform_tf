provider "aws" {
#  access_key = var.access_key
#  secret_key = var.secret_key
  alias  = "ohio"
  region = "us-east-2"
}

# Create Network-VPC
module "vpc" {
  providers = {
    aws = aws.ohio
  }
  source = "./modules/vpc"
  vpc_id = module.vpc.vpc_id
  name   = var.name
  #  tags                   = var.tags_jft
  environment               = var.environment
  cidr_block                = var.cidr_block
  public_subnet_cidr_blocks = var.public_subnet_cidr_blocks
  dmz_subnet_cidr_blocks    = var.dmz_subnet_cidr_blocks
  int_subnet_cidr_blocks    = var.int_subnet_cidr_blocks
  availability_zones_public = var.availability_zones_public
  availability_zones_dmz    = var.availability_zones_dmz
  availability_zones_int    = var.availability_zones_int
}
