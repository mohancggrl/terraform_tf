provider "aws" {
#  access_key = var.access_key
#  secret_key = var.secret_key
  alias      = "ohio"
  region     = "us-east-2"
}

data "aws_vpc" "svp_ohio" {
  provider = aws.ohio
  filter {
    name   = "cidr-block"
    values = [var.vpc_cidr]
  }
}

module "ohio" {
  providers = {
    aws = aws.ohio
  }
  source            = "./modules/ohio/"
  svp_ohio_vpc_id   = data.aws_vpc.svp_ohio.id
}
