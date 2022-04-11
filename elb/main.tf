provider "aws" {
  access_key = var.access_key
  secret_key = var.secret_key
  alias  = "ohio"
  region = "us-east-2"
}

# ----------------------------
# ELB
# ----------------------------
#================
# Data ohio
#================
data "aws_vpc" "svp_ohio" {
	provider = aws.ohio
	filter {
		name = "cidr-block"
		values = [var.vpc_cidr]
	}
}
#=====subnet_ecom=====
data "aws_subnet" "jmjs_int1" {
	provider = aws.ohio
	filter {
		name = "cidr-block"
		values = [var.jmjs_int1_cidr]
	}
	vpc_id = data.aws_vpc.svp_ohio.id
}

data "aws_subnet" "jmjs_int2" {
	provider = aws.ohio
	filter {
		name = "cidr-block"
		values = [var.jmjs_int2_cidr]
	}
	vpc_id = data.aws_vpc.svp_ohio.id
}

data "aws_subnet" "sqid_proxy1" {
	provider = aws.ohio
	filter {
		name = "cidr-block"
		values = [var.sqid_proxy1_cidr]
	}
	vpc_id = data.aws_vpc.svp_ohio.id
}

data "aws_subnet" "sqid_proxy2" {
	provider = aws.ohio
	filter {
		name = "cidr-block"
		values = [var.sqid_proxy2_cidr]
	}
	vpc_id = data.aws_vpc.svp_ohio.id
}

#======security_group ==============

data "aws_security_group" "elb_jm_svp" {
    provider = aws.ohio
    vpc_id = data.aws_vpc.svp_ohio.id
    tags = {
      Name   = "elb_jm_svp"
  }
}

data "aws_security_group" "elb_sp_svp" {
    provider = aws.ohio
    vpc_id = data.aws_vpc.svp_ohio.id
    tags = {
      Name   = "elb_sp_svp"
  }
}


data "aws_instances" "jm_int" {
        provider = aws.ohio
        instance_tags = {
      app = "jm_int"
    }
    instance_state_names = ["running", "stopped"]
}

data "aws_instances" "sqid_proxy" {
        provider = aws.ohio
        instance_tags = {
      app = "sqid_proxy"
    }
    instance_state_names = ["running", "stopped"]
}
#==================================================

module "sqid_proxy" {
  providers = {
    aws = aws.ohio
  }
  source                 = "./modules/elb/"
  name                   = "SqidProxy"
  subnet_ids             = [data.aws_subnet.sqid_proxy1.id, data.aws_subnet.sqid_proxy2.id]
  security_group_ids    = [data.aws_security_group.elb_sp_svp.id]
  instance_port          = var.instance_port_sqid_proxy
  instance_protocol      = var.instance_protocol_sqid_proxy
  lb_port                = var.lb_port_sqid_proxy
  lb_protocol            = var.lb_protocol_sqid_proxy
  instance_ids           = data.aws_instances.sqid_proxy.ids
  target                 = var.target_sqid_proxy
  enable                 = var.enable_sqid_proxy
}

module "jm_int" {
  providers = {
    aws = aws.ohio
  }
  source                 = "./modules/elb/"
  name                   = "jmInt"
  subnet_ids             = [data.aws_subnet.jmjs_int1.id, data.aws_subnet.jmjs_int2.id]
  security_group_ids     = [data.aws_security_group.elb_jm_svp.id]
  instance_port          = var.instance_port_jm_int
  instance_protocol      = var.instance_protocol_jm_int
  lb_port                = var.lb_port_jm_int
  lb_protocol            = var.lb_protocol_jm_int
  instance_ids           = data.aws_instances.jm_int.ids
  target                 = var.target_jm_int
  enable                 = var.enable_jm_int
}                                                                   


