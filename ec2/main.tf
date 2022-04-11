provider "aws" {
#  access_key = var.access_key
#  secret_key = var.secret_key
  alias  = "ohio"
  region = "us-east-2"
}

#=================================
#data_ohio
#=================================
data "aws_vpc" "svp_ohio" {
	provider = aws.ohio
	filter {
		name = "cidr-block"
		values = [var.vpc_cidr]
	}
}

data "aws_subnet" "jump_svp" {
	provider = aws.ohio
	filter {
		name = "cidr-block"
		values = [var.jump_svp_cidr]
	}
	vpc_id = data.aws_vpc.svp_ohio.id
}

#subnet for jm js int

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

data "aws_subnet" "js_dmz" {
	provider = aws.ohio
	filter {
		name = "cidr-block"
		values = [var.js_dmz_cidr]
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


#========
#Rancher
#========
data "aws_subnet" "rancher_dmz1" {
	provider = aws.ohio
	filter {
		name = "cidr-block"
		values = [var.rancher_dmz1_cidr]
	}
	vpc_id = data.aws_vpc.svp_ohio.id
}

data "aws_subnet" "rancher_dmz2" {
	provider = aws.ohio
	filter {
		name = "cidr-block"
		values = [var.rancher_dmz2_cidr]
	}
	vpc_id = data.aws_vpc.svp_ohio.id
}

data "aws_subnet" "rancher_dmz3" {
	provider = aws.ohio
	filter {
		name = "cidr-block"
		values = [var.rancher_dmz3_cidr]
	}
	vpc_id = data.aws_vpc.svp_ohio.id
}

#INT
data "aws_subnet" "rancher_int1" {
	provider = aws.ohio
	filter {
		name = "cidr-block"
		values = [var.rancher_int1_cidr]
	}
	vpc_id = data.aws_vpc.svp_ohio.id
}

data "aws_subnet" "rancher_int2" {
	provider = aws.ohio
	filter {
		name = "cidr-block"
		values = [var.rancher_int2_cidr]
	}
	vpc_id = data.aws_vpc.svp_ohio.id
}

data "aws_subnet" "rancher_int3" {
	provider = aws.ohio
	filter {
		name = "cidr-block"
		values = [var.rancher_int3_cidr]
	}
	vpc_id = data.aws_vpc.svp_ohio.id
}

#=========================
#security grop
#=========================
data "aws_security_group" "jumpbox_svp" {
    provider = aws.ohio
    vpc_id = data.aws_vpc.svp_ohio.id
    tags = {
      Name   = "jumpbox_svp"
  }
}

data "aws_security_group" "js_dmz_svp" {
    provider = aws.ohio
    vpc_id = data.aws_vpc.svp_ohio.id
    tags = {
      Name   = "js_dmz_svp"
  }
}

data "aws_security_group" "js_int_svp" {
        provider = aws.ohio
    vpc_id = data.aws_vpc.svp_ohio.id
    tags = {
      Name   = "js_int_svp"
  }
}

data "aws_security_group" "jm_int_svp" {
    provider = aws.ohio
    vpc_id = data.aws_vpc.svp_ohio.id
    tags = {
      Name   = "jm_int_svp"
  }
}

data "aws_security_group" "sqid_proxy" {
        provider = aws.ohio
    vpc_id = data.aws_vpc.svp_ohio.id
    tags = {
      Name   = "sqid_proxy"
  }
}

data "aws_security_group" "rancher_dmz" {
        provider = aws.ohio
    vpc_id = data.aws_vpc.svp_ohio.id
    tags = {
      Name   = "rancher_dmz"
  }
}

data "aws_security_group" "rancher_int" {
        provider = aws.ohio
    vpc_id = data.aws_vpc.svp_ohio.id
    tags = {
      Name   = "rancher_int"
  }
}

#=========================================
#=========================================
# Jump_linux
#=========================================
module "jump_svp" {
  providers = {
    aws = aws.ohio
  }
  source                 = "./modules/ec2/"
  name                   = var.name_jump_svp
  ec2_count              = var.ec2_count_jump_svp
  ami                    = var.ami_jump_svp
  instance_type          = var.instance_type_jump_svp
  key_name               = var.key_name_jump_svp
  vpc_security_group_ids = [data.aws_security_group.jumpbox_svp.id]
  subnet_id              = data.aws_subnet.jump_svp.id
  env                    = var.env_jump_svp
  app                    = "jump"
  volume_size            = var.volume_size_jump_svp
}

#=========================================
#=========================================
# Jump_windows
#=========================================
module "jump_svp1" {
  providers = {
    aws = aws.ohio
  }
  source                 = "./modules/ec2/"
  name                   = var.name_jump_svp1
  ec2_count              = var.ec2_count_jump_svp1
  ami                    = var.ami_jump_svp1
  instance_type          = var.instance_type_jump_svp1
  key_name               = var.key_name_jump_svp1
  vpc_security_group_ids = [data.aws_security_group.jumpbox_svp.id]
  subnet_id              = data.aws_subnet.jump_svp.id
  env                    = var.env_jump_svp1
  app                    = "jump"
  volume_size            = var.volume_size_jump_svp1
}

#=========================================
# js1_dmz_svp
#=========================================

module "js1_dmz" {
  providers = {
    aws = aws.ohio
  }
  source                 = "./modules/ec2/"
  name                   = var.name_js1_dmz
  ec2_count              = var.ec2_count_js1_dmz  #2
  ami                    = var.ami_js1_dmz
  instance_type          = var.instance_type_js1_dmz
  key_name               = var.key_name_js1_dmz
  vpc_security_group_ids = [data.aws_security_group.js_dmz_svp.id]
  subnet_id              = data.aws_subnet.js_dmz.id
  env                    = var.env_js1_dmz
  app                    = "js_dmz"
  volume_size            = var.volume_size_js1_dmz
}

##=========================================
## js2_dmz_svp
##=========================================
#
#module "js2_dmz" {
#  providers = {
#    aws = aws.ohio
#  }
#  source                 = "./modules/ec2/"
#  name                   = var.name_js2_dmz
#  ec2_count              = var.ec2_count_js2_dmz  #2
#  ami                    = var.ami_js2_dmz
#  instance_type          = var.instance_type_js2_dmz
#  key_name               = var.key_name_js2_dmz
#  vpc_security_group_ids = [data.aws_security_group.js_dmz_svp.id]
#  subnet_id              = data.aws_subnet.js2_svp_dmz.id
#  env                    = var.env_js2_dmz
#  app                    = "js_dmz"
#  volume_size            = var.volume_size_js2_dmz
#}

#=========================================
# js1_int_svp
#=========================================

module "js1_int" {
  providers = {
    aws = aws.ohio
  }
  source                 = "./modules/ec2/"
  name                   = var.name_js1_int
  ec2_count              = var.ec2_count_js1_int  #2
  ami                    = var.ami_js1_int
  instance_type          = var.instance_type_js1_int
  key_name               = var.key_name_js1_int
  vpc_security_group_ids = [data.aws_security_group.js_int_svp.id]
  subnet_id              = data.aws_subnet.jmjs_int1.id
  env                    = var.env_js1_int
  app                    = "js_int"
  volume_size            = var.volume_size_js1_int
}

#=========================================
# js2_int_svp
#=========================================

module "js2_int" {
  providers = {
    aws = aws.ohio
  }
  source                 = "./modules/ec2/"
  name                   = var.name_js2_int
  ec2_count              = var.ec2_count_js2_int  #2
  ami                    = var.ami_js2_int
  instance_type          = var.instance_type_js2_int
  key_name               = var.key_name_js2_int
  vpc_security_group_ids = [data.aws_security_group.js_int_svp.id]
  subnet_id              = data.aws_subnet.jmjs_int2.id
  env                    = var.env_js2_int
  app                    = "js_int"
  volume_size            = var.volume_size_js2_int
}



#=========================================
# jm1_int_svp
#=========================================

module "jm1_int" {
  providers = {
    aws = aws.ohio
  }
  source                 = "./modules/ec2/"
  name                   = var.name_jm1_int
  ec2_count              = var.ec2_count_jm1_int  #2
  ami                    = var.ami_jm1_int
  instance_type          = var.instance_type_jm1_int
  key_name               = var.key_name_jm1_int
  vpc_security_group_ids = [data.aws_security_group.jm_int_svp.id]
  subnet_id              = data.aws_subnet.jmjs_int1.id
  env                    = var.env_js1_int
  app                    = "jm_int"
  volume_size            = var.volume_size_js1_int
}

#=========================================
# jm2_int_svp
#=========================================

module "jm2_int" {
  providers = {
    aws = aws.ohio
  }
  source                 = "./modules/ec2/"
  name                   = var.name_jm2_int
  ec2_count              = var.ec2_count_jm2_int  #2
  ami                    = var.ami_jm2_int
  instance_type          = var.instance_type_jm2_int
  key_name               = var.key_name_jm2_int
  vpc_security_group_ids = [data.aws_security_group.jm_int_svp.id]
  subnet_id              = data.aws_subnet.jmjs_int2.id
  env                    = var.env_js2_int
  app                    = "jm_int"
  volume_size            = var.volume_size_js2_int
}

########################
#sqid_proxy
########################

module "sqid_proxy1" {
  providers = {
    aws = aws.ohio
  }
  source                 = "./modules/ec2/"
  name                   = var.name_sqid_proxy1
  ec2_count              = var.ec2_count_sqid_proxy1 #2
  ami                    = var.ami_sqid_proxy1
  instance_type          = var.instance_type_sqid_proxy1
  key_name               = var.key_name_sqid_proxy1
  vpc_security_group_ids = [data.aws_security_group.sqid_proxy.id]
  subnet_id              = data.aws_subnet.sqid_proxy1.id
  env                    = var.env_sqid_proxy1
  app                    = "sqid_proxy"
  volume_size            = var.volume_size_sqid_proxy1
}

module "sqid_proxy2" {
  providers = {
    aws = aws.ohio
  }
  source                 = "./modules/ec2/"
  name                   = var.name_sqid_proxy2
  ec2_count              = var.ec2_count_sqid_proxy2 #2
  ami                    = var.ami_sqid_proxy2
  instance_type          = var.instance_type_sqid_proxy2
  key_name               = var.key_name_sqid_proxy2
  vpc_security_group_ids = [data.aws_security_group.sqid_proxy.id]
  subnet_id              = data.aws_subnet.sqid_proxy2.id
  env                    = var.env_sqid_proxy2
  app                    = "sqid_proxy"
  volume_size            = var.volume_size_sqid_proxy2
}

##########################
### etcd
##########################
#module "etcd_dmz1" {
#  providers = {
#    aws = aws.ohio
#  }
#  source                 = "./modules/ec2/"
#  name                   = var.name_etcd_dmz1
#  ec2_count              = var.ec2_count_etcd_dmz1 #2
#  ami                    = var.ami_etcd_dmz1
#  instance_type          = var.instance_type_etcd_dmz1
#  key_name               = var.key_name_etcd_dmz1
#  vpc_security_group_ids = [data.aws_security_group.rancher_dmz.id]
#  subnet_id              = data.aws_subnet.rancher_dmz1.id
#  env                    = var.env_etcd_dmz1
#  app                    = "rancher_dmz"
#  volume_size            = var.volume_size_etcd_dmz1
#}
#
#module "etcd_dmz2" {
#  providers = {
#    aws = aws.ohio
#  }
#  source                 = "./modules/ec2/"
#  name                   = var.name_etcd_dmz2
#  ec2_count              = var.ec2_count_etcd_dmz2 #2
#  ami                    = var.ami_etcd_dmz2
#  instance_type          = var.instance_type_etcd_dmz2
#  key_name               = var.key_name_etcd_dmz2
#  vpc_security_group_ids = [data.aws_security_group.rancher_dmz.id]
#  subnet_id              = data.aws_subnet.rancher_dmz2.id
#  env                    = var.env_etcd_dmz2
#  app                    = "rancher_dmz"
#  volume_size            = var.volume_size_etcd_dmz2
#}
#
#module "etcd_dmz3" {
#  providers = {
#    aws = aws.ohio
#  }
#  source                 = "./modules/ec2/"
#  name                   = var.name_etcd_dmz3
#  ec2_count              = var.ec2_count_etcd_dmz3 #2
#  ami                    = var.ami_etcd_dmz3
#  instance_type          = var.instance_type_etcd_dmz3
#  key_name               = var.key_name_etcd_dmz3
#  vpc_security_group_ids = [data.aws_security_group.rancher_dmz.id]
#  subnet_id              = data.aws_subnet.rancher_dmz3.id
#  env                    = var.env_etcd_dmz3
#  app                    = "rancher_dmz"
#  volume_size            = var.volume_size_etcd_dmz3
#}
#
#
##INT
#module "etcd_int1" {
#  providers = {
#    aws = aws.ohio
#  }
#  source                 = "./modules/ec2/"
#  name                   = var.name_etcd_int1
#  ec2_count              = var.ec2_count_etcd_int1 #2
#  ami                    = var.ami_etcd_int1
#  instance_type          = var.instance_type_etcd_int1
#  key_name               = var.key_name_etcd_int1
#  vpc_security_group_ids = [data.aws_security_group.rancher_int.id]
#  subnet_id              = data.aws_subnet.rancher_int1.id
#  env                    = var.env_etcd_int1
#  app                    = "rancher_int"
#  volume_size            = var.volume_size_etcd_int1
#}
#
#module "etcd_int2" {
#  providers = {
#    aws = aws.ohio
#  }
#  source                 = "./modules/ec2/"
#  name                   = var.name_etcd_int2
#  ec2_count              = var.ec2_count_etcd_int2 #2
#  ami                    = var.ami_etcd_int2
#  instance_type          = var.instance_type_etcd_int2
#  key_name               = var.key_name_etcd_int2
#  vpc_security_group_ids = [data.aws_security_group.rancher_int.id]
#  subnet_id              = data.aws_subnet.rancher_int2.id
#  env                    = var.env_etcd_int2
#  app                    = "rancher_int"
#  volume_size            = var.volume_size_etcd_int2
#}
#
#module "etcd_int3" {
#  providers = {
#    aws = aws.ohio
#  }
#  source                 = "./modules/ec2/"
#  name                   = var.name_etcd_int3
#  ec2_count              = var.ec2_count_etcd_int3 #2
#  ami                    = var.ami_etcd_int3
#  instance_type          = var.instance_type_etcd_int3
#  key_name               = var.key_name_etcd_int3
#  vpc_security_group_ids = [data.aws_security_group.rancher_int.id]
#  subnet_id              = data.aws_subnet.rancher_int3.id
#  env                    = var.env_etcd_int3
#  app                    = "rancher_int"
#  volume_size            = var.volume_size_etcd_int3
#}
#
##########################
### worker_node
##########################
#module "worker_dmz1" {
#  providers = {
#    aws = aws.ohio
#  }
#  source                 = "./modules/ec2/"
#  name                   = var.name_worker_dmz1
#  ec2_count              = var.ec2_count_worker_dmz1 #2
#  ami                    = var.ami_worker_dmz1
#  instance_type          = var.instance_type_worker_dmz1
#  key_name               = var.key_name_worker_dmz1
#  vpc_security_group_ids = [data.aws_security_group.rancher_dmz.id]
#  subnet_id              = data.aws_subnet.rancher_dmz1.id
#  env                    = var.env_worker_dmz1
#  app                    = "rancher_dmz"
#  volume_size            = var.volume_size_worker_dmz1
#}
#
#module "worker_dmz2" {
#  providers = {
#    aws = aws.ohio
#  }
#  source                 = "./modules/ec2/"
#  name                   = var.name_worker_dmz2
#  ec2_count              = var.ec2_count_worker_dmz2 #2
#  ami                    = var.ami_worker_dmz2
#  instance_type          = var.instance_type_worker_dmz2
#  key_name               = var.key_name_worker_dmz2
#  vpc_security_group_ids = [data.aws_security_group.rancher_dmz.id]
#  subnet_id              = data.aws_subnet.rancher_dmz2.id
#  env                    = var.env_worker_dmz2
#  app                    = "rancher_dmz"
#  volume_size            = var.volume_size_worker_dmz2
#}
#
#module "worker_dmz3" {
#  providers = {
#    aws = aws.ohio
#  }
#  source                 = "./modules/ec2/"
#  name                   = var.name_worker_dmz3
#  ec2_count              = var.ec2_count_worker_dmz3 #2
#  ami                    = var.ami_worker_dmz3
#  instance_type          = var.instance_type_worker_dmz3
#  key_name               = var.key_name_worker_dmz3
#  vpc_security_group_ids = [data.aws_security_group.rancher_dmz.id]
#  subnet_id              = data.aws_subnet.rancher_dmz3.id
#  env                    = var.env_worker_dmz3
#  app                    = "rancher_dmz"
#  volume_size            = var.volume_size_worker_dmz3
#}
#
#
##INT
#module "worker_int1" {
#  providers = {
#    aws = aws.ohio
#  }
#  source                 = "./modules/ec2/"
#  name                   = var.name_worker_int1
#  ec2_count              = var.ec2_count_worker_int1 #2
#  ami                    = var.ami_worker_int1
#  instance_type          = var.instance_type_worker_int1
#  key_name               = var.key_name_worker_int1
#  vpc_security_group_ids = [data.aws_security_group.rancher_int.id]
#  subnet_id              = data.aws_subnet.rancher_int1.id
#  env                    = var.env_worker_int1
#  app                    = "rancher_int"
#  volume_size            = var.volume_size_worker_int1
#}
#
#module "worker_int2" {
#  providers = {
#    aws = aws.ohio
#  }
#  source                 = "./modules/ec2/"
#  name                   = var.name_worker_int2
#  ec2_count              = var.ec2_count_worker_int2 #2
#  ami                    = var.ami_worker_int2
#  instance_type          = var.instance_type_worker_int2
#  key_name               = var.key_name_worker_int2
#  vpc_security_group_ids = [data.aws_security_group.rancher_int.id]
#  subnet_id              = data.aws_subnet.rancher_int2.id
#  env                    = var.env_worker_int2
#  app                    = "rancher_int"
#  volume_size            = var.volume_size_worker_int2
#}
#
#module "worker_int3" {
#  providers = {
#    aws = aws.ohio
#  }
#  source                 = "./modules/ec2/"
#  name                   = var.name_worker_int3
#  ec2_count              = var.ec2_count_worker_int3 #2
#  ami                    = var.ami_worker_int3
#  instance_type          = var.instance_type_worker_int3
#  key_name               = var.key_name_worker_int3
#  vpc_security_group_ids = [data.aws_security_group.rancher_int.id]
#  subnet_id              = data.aws_subnet.rancher_int3.id
#  env                    = var.env_worker_int3
#  app                    = "rancher_int"
#  volume_size            = var.volume_size_worker_int3
#}
#
#
##########################
### control_panel
##########################
#module "control_panel_dmz1" {
#  providers = {
#    aws = aws.ohio
#  }
#  source                 = "./modules/ec2/"
#  name                   = var.name_control_panel_dmz1
#  ec2_count              = var.ec2_count_control_panel_dmz1 #2
#  ami                    = var.ami_control_panel_dmz1
#  instance_type          = var.instance_type_control_panel_dmz1
#  key_name               = var.key_name_control_panel_dmz1
#  vpc_security_group_ids = [data.aws_security_group.rancher_dmz.id]
#  subnet_id              = data.aws_subnet.rancher_dmz1.id
#  env                    = var.env_control_panel_dmz1
#  app                    = "rancher_dmz"
#  volume_size            = var.volume_size_control_panel_dmz1
#}
#
#module "control_panel_dmz2" {
#  providers = {
#    aws = aws.ohio
#  }
#  source                 = "./modules/ec2/"
#  name                   = var.name_control_panel_dmz2
#  ec2_count              = var.ec2_count_control_panel_dmz2 #2
#  ami                    = var.ami_control_panel_dmz2
#  instance_type          = var.instance_type_control_panel_dmz2
#  key_name               = var.key_name_control_panel_dmz2
#  vpc_security_group_ids = [data.aws_security_group.rancher_dmz.id]
#  subnet_id              = data.aws_subnet.rancher_dmz2.id
#  env                    = var.env_control_panel_dmz2
#  app                    = "rancher_dmz"
#  volume_size            = var.volume_size_control_panel_dmz2
#}
#
#
##INT
#module "control_panel_int1" {
#  providers = {
#    aws = aws.ohio
#  }
#  source                 = "./modules/ec2/"
#  name                   = var.name_control_panel_int1
#  ec2_count              = var.ec2_count_control_panel_int1 #2
#  ami                    = var.ami_control_panel_int1
#  instance_type          = var.instance_type_control_panel_int1
#  key_name               = var.key_name_control_panel_int1
#  vpc_security_group_ids = [data.aws_security_group.rancher_int.id]
#  subnet_id              = data.aws_subnet.rancher_int1.id
#  env                    = var.env_control_panel_int1
#  app                    = "rancher_int"
#  volume_size            = var.volume_size_control_panel_int1
#}
#
#module "control_panel_int2" {
#  providers = {
#    aws = aws.ohio
#  }
#  source                 = "./modules/ec2/"
#  name                   = var.name_control_panel_int2
#  ec2_count              = var.ec2_count_control_panel_int2 #2
#  ami                    = var.ami_control_panel_int2
#  instance_type          = var.instance_type_control_panel_int2
#  key_name               = var.key_name_control_panel_int2
#  vpc_security_group_ids = [data.aws_security_group.rancher_int.id]
#  subnet_id              = data.aws_subnet.rancher_int2.id
#  env                    = var.env_control_panel_int2
#  app                    = "rancher_int"
#  volume_size            = var.volume_size_control_panel_int2
#}

