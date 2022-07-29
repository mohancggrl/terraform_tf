provider "aws" {
  access_key = var.access_key
  secret_key = var.secret_key
  alias  = "nvg"
  region = var.region
}

module "ec2" {
  providers = {
    aws = aws.nvg
  }
  source                 = "./modules/ec2/"
  name                   = var.name
  ec2_count              = var.ec2_count
  ami                    = var.ami
  instance_type          = var.instance_type
  key_name               = var.key_name
  vpc_security_group_ids = [var.sg] #[module.sg.aws_security_group.id]
  subnet_id              = var.aws_subnet
  env                    = var.env
  volume_size            = var.volume_size
}