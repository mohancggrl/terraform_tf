resource "aws_security_group" "jumpbox_svp" {
	name   = "jumpbox_svp"
	vpc_id =  var.svp_ohio_vpc_id

	dynamic "ingress" {
		for_each = local.ingress_rules_jumpbox_svp

		content {
			description = ingress.value.description
			from_port   = ingress.value.from_port
			to_port     = ingress.value.to_port
			protocol    = ingress.value.protocol
			cidr_blocks = ingress.value.cidr_block
		}
	}
		
	dynamic "egress" {
		for_each = local.egress_rules_jumpbox_svp

		content {
			description = egress.value.description
			from_port   = egress.value.from_port
			to_port     = egress.value.to_port
			protocol    = egress.value.protocol
			cidr_blocks = egress.value.cidr_block
		}
	}
	tags = {
		Name = "jumpbox_svp"
		Env  = "svp_cst"
	}
}

#======== DMZ ====================

resource "aws_security_group" "js_dmz_svp" {
	depends_on    = [aws_security_group.jumpbox_svp, aws_security_group.jm_int_svp]
	name   = "js_dmz_svp"
	vpc_id =  var.svp_ohio_vpc_id

	dynamic "ingress" {
		for_each = local.ingress_rules_js_dmz_svp

		content {
			description = ingress.value.description
			from_port   = ingress.value.from_port
			to_port     = ingress.value.to_port
			protocol    = ingress.value.protocol
			cidr_blocks = ingress.value.cidr_block
		}
	}
	
	dynamic "ingress" {
		for_each = local.ingress_rules_js_dmz_svp_se

		content {
			description = ingress.value.description
			from_port   = ingress.value.from_port
			to_port     = ingress.value.to_port
			protocol    = ingress.value.protocol
			security_groups = ingress.value.security_groups
		}
	}
	
	dynamic "egress" {
		for_each = local.egress_rules_js_dmz_svp

		content {
			description = egress.value.description
			from_port   = egress.value.from_port
			to_port     = egress.value.to_port
			protocol    = egress.value.protocol
			cidr_blocks = egress.value.cidr_block
		}
	}
	tags = {
		Name = "js_dmz_svp"
		Env  = "svp_cst"
	}
}

#resource "aws_security_group" "ecom_dmz_svp" {
#	depends_on    = [aws_security_group.jumpbox_svp]
#	name   = "ecom_dmz_svp"
#	vpc_id =  var.svp_ohio_vpc_id
#
#	dynamic "ingress" {
#		for_each = local.ingress_rules_ecom_dmz_svp
#
#		content {
#			description = ingress.value.description
#			from_port   = ingress.value.from_port
#			to_port     = ingress.value.to_port
#			protocol    = ingress.value.protocol
#			cidr_blocks = ingress.value.cidr_block
#		}
#	}
#	
#	dynamic "ingress" {
#		for_each = local.ingress_rules_js_dmz_svp_se
#
#		content {
#			description = ingress.value.description
#			from_port   = ingress.value.from_port
#			to_port     = ingress.value.to_port
#			protocol    = ingress.value.protocol
#			security_groups = ingress.value.security_groups
#		}
#	}
#	
#	dynamic "egress" {
#		for_each = local.egress_rules_ecom_dmz_svp
#
#		content {
#			description = egress.value.description
#			from_port   = egress.value.from_port
#			to_port     = egress.value.to_port
#			protocol    = egress.value.protocol
#			cidr_blocks = egress.value.cidr_block
#		}
#	}
#	tags = {
#		Name = "ecom_dmz_svp"
#		Env  = "svp_cst"
#	}
#}
#
#resource "aws_security_group" "am_dmz_svp" {
#	depends_on    = [aws_security_group.jumpbox_svp]
#	name   = "am_dmz_svp"
#	vpc_id =  var.svp_ohio_vpc_id
#
#	dynamic "ingress" {
#		for_each = local.ingress_rules_am_dmz_svp
#
#		content {
#			description = ingress.value.description
#			from_port   = ingress.value.from_port
#			to_port     = ingress.value.to_port
#			protocol    = ingress.value.protocol
#			cidr_blocks = ingress.value.cidr_block
#		}
#	}
#	
#	dynamic "ingress" {
#		for_each = local.ingress_rules_js_dmz_svp_se
#
#		content {
#			description = ingress.value.description
#			from_port   = ingress.value.from_port
#			to_port     = ingress.value.to_port
#			protocol    = ingress.value.protocol
#			security_groups = ingress.value.security_groups
#		}
#	}
#	
#	dynamic "egress" {
#		for_each = local.egress_rules_am_dmz_svp
#
#		content {
#			description = egress.value.description
#			from_port   = egress.value.from_port
#			to_port     = egress.value.to_port
#			protocol    = egress.value.protocol
#			cidr_blocks = egress.value.cidr_block
#		}
#	}
#	tags = {
#		Name = "am_dmz_svp"
#		Env  = "svp_cst"
#	}
#}

resource "aws_security_group" "js_int_svp" {
	depends_on    = [aws_security_group.jumpbox_svp, aws_security_group.jm_int_svp]
	name   = "js_int_svp"
	vpc_id =  var.svp_ohio_vpc_id

	dynamic "ingress" {
		for_each = local.ingress_rules_js_int_svp

		content {
			description = ingress.value.description
			from_port   = ingress.value.from_port
			to_port     = ingress.value.to_port
			protocol    = ingress.value.protocol
			cidr_blocks = ingress.value.cidr_block
		}
	}
	
	dynamic "ingress" {
		for_each = local.ingress_rules_js_int_svp_se

		content {
			description = ingress.value.description
			from_port   = ingress.value.from_port
			to_port     = ingress.value.to_port
			protocol    = ingress.value.protocol
			security_groups = ingress.value.security_groups
		}
	}
	
	dynamic "egress" {
		for_each = local.egress_rules_js_int_svp

		content {
			description = egress.value.description
			from_port   = egress.value.from_port
			to_port     = egress.value.to_port
			protocol    = egress.value.protocol
			cidr_blocks = egress.value.cidr_block
		}
	}
	tags = {
		Name = "js_int_svp"
		Env  = "svp_cst"
	}
}

resource "aws_security_group" "jm_int_svp" {
	depends_on    = [aws_security_group.jumpbox_svp]
	name   = "jm_int_svp"
	vpc_id =  var.svp_ohio_vpc_id

	dynamic "ingress" {
		for_each = local.ingress_rules_jm_int_svp

		content {
			description = ingress.value.description
			from_port   = ingress.value.from_port
			to_port     = ingress.value.to_port
			protocol    = ingress.value.protocol
			cidr_blocks = ingress.value.cidr_block
		}
	}
	
	dynamic "ingress" {
		for_each = local.ingress_rules_jm_int_svp_se

		content {
			description = ingress.value.description
			from_port   = ingress.value.from_port
			to_port     = ingress.value.to_port
			protocol    = ingress.value.protocol
			security_groups = ingress.value.security_groups
		}
	}
	
	dynamic "egress" {
		for_each = local.egress_rules_jm_int_svp

		content {
			description = egress.value.description
			from_port   = egress.value.from_port
			to_port     = egress.value.to_port
			protocol    = egress.value.protocol
			cidr_blocks = egress.value.cidr_block
		}
	}
	tags = {
		Name = "jm_int_svp"
		Env  = "svp_cst"
	}
}

#sp======

resource "aws_security_group" "sqid_proxy" {
	depends_on    = [aws_security_group.jumpbox_svp]
	name   = "sqid_proxy"
	vpc_id =  var.svp_ohio_vpc_id

	dynamic "ingress" {
		for_each = local.ingress_rules_sqid_proxy

		content {
			description = ingress.value.description
			from_port   = ingress.value.from_port
			to_port     = ingress.value.to_port
			protocol    = ingress.value.protocol
			cidr_blocks = ingress.value.cidr_block
		}
	}
	
	dynamic "ingress" {
		for_each = local.ingress_rules_sqid_proxy_se

		content {
			description = ingress.value.description
			from_port   = ingress.value.from_port
			to_port     = ingress.value.to_port
			protocol    = ingress.value.protocol
			security_groups = ingress.value.security_groups
		}
	}
	
	dynamic "egress" {
		for_each = local.egress_rules_sqid_proxy

		content {
			description = egress.value.description
			from_port   = egress.value.from_port
			to_port     = egress.value.to_port
			protocol    = egress.value.protocol
			cidr_blocks = egress.value.cidr_block
		}
	}
	tags = {
		Name = "sqid_proxy"
		Env  = "svp_cst"
	}
}

#resource "aws_security_group" "ecom_int_svp" {
#	depends_on    = [aws_security_group.jumpbox_svp]
#	name   = "ecom_int_svp"
#	vpc_id =  var.svp_ohio_vpc_id
#
#	dynamic "ingress" {
#		for_each = local.ingress_rules_ecom_int_svp
#
#		content {
#			description = ingress.value.description
#			from_port   = ingress.value.from_port
#			to_port     = ingress.value.to_port
#			protocol    = ingress.value.protocol
#			cidr_blocks = ingress.value.cidr_block
#		}
#	}
#	
#	dynamic "ingress" {
#		for_each = local.ingress_rules_js_int_svp_se
#
#		content {
#			description = ingress.value.description
#			from_port   = ingress.value.from_port
#			to_port     = ingress.value.to_port
#			protocol    = ingress.value.protocol
#			security_groups = ingress.value.security_groups
#		}
#	}
#	
#	dynamic "egress" {
#		for_each = local.egress_rules_ecom_int_svp
#
#		content {
#			description = egress.value.description
#			from_port   = egress.value.from_port
#			to_port     = egress.value.to_port
#			protocol    = egress.value.protocol
#			cidr_blocks = egress.value.cidr_block
#		}
#	}
#	tags = {
#		Name = "ecom_int_svp"
#		Env  = "svp_cst"
#	}
#}

#resource "aws_security_group" "am_int_svp" {
#	depends_on    = [aws_security_group.jumpbox_svp]
#	name   = "am_int_svp"
#	vpc_id =  var.svp_ohio_vpc_id
#
#	dynamic "ingress" {
#		for_each = local.ingress_rules_am_int_svp
#
#		content {
#			description = ingress.value.description
#			from_port   = ingress.value.from_port
#			to_port     = ingress.value.to_port
#			protocol    = ingress.value.protocol
#			cidr_blocks = ingress.value.cidr_block
#		}
#	}
#	
#	dynamic "ingress" {
#		for_each = local.ingress_rules_js_int_svp_se
#
#		content {
#			description = ingress.value.description
#			from_port   = ingress.value.from_port
#			to_port     = ingress.value.to_port
#			protocol    = ingress.value.protocol
#			security_groups = ingress.value.security_groups
#		}
#	}
#	
#	dynamic "egress" {
#		for_each = local.egress_rules_am_int_svp
#
#		content {
#			description = egress.value.description
#			from_port   = egress.value.from_port
#			to_port     = egress.value.to_port
#			protocol    = egress.value.protocol
#			cidr_blocks = egress.value.cidr_block
#		}
#	}
#	tags = {
#		Name = "am_int_svp"
#		Env  = "svp_cst"
#	}
#}

resource "aws_security_group" "elb_jm_svp" {
	name   = "elb_jm_svp"
	vpc_id =  var.svp_ohio_vpc_id

	dynamic "ingress" {
		for_each = local.ingress_rules_elb_jm_svp

		content {
			description = ingress.value.description
			from_port   = ingress.value.from_port
			to_port     = ingress.value.to_port
			protocol    = ingress.value.protocol
			cidr_blocks = ingress.value.cidr_block
		}
	}
		
	dynamic "egress" {
		for_each = local.egress_rules_elb_jm_svp

		content {
			description = egress.value.description
			from_port   = egress.value.from_port
			to_port     = egress.value.to_port
			protocol    = egress.value.protocol
			cidr_blocks = egress.value.cidr_block
		}
	}
	tags = {
		Name = "elb_jm_svp"
		Env  = "svp_cst"
	}
}

resource "aws_security_group" "elb_sp_svp" {
	name   = "elb_sp_svp"
	vpc_id =  var.svp_ohio_vpc_id

	dynamic "ingress" {
		for_each = local.ingress_rules_elb_sp_svp

		content {
			description = ingress.value.description
			from_port   = ingress.value.from_port
			to_port     = ingress.value.to_port
			protocol    = ingress.value.protocol
			cidr_blocks = ingress.value.cidr_block
		}
	}
		
	dynamic "egress" {
		for_each = local.egress_rules_elb_sp_svp

		content {
			description = egress.value.description
			from_port   = egress.value.from_port
			to_port     = egress.value.to_port
			protocol    = egress.value.protocol
			cidr_blocks = egress.value.cidr_block
		}
	}
	tags = {
		Name = "elb_sp_svp"
		Env  = "svp_cst"
	}
}

resource "aws_security_group" "rancher_int" {
	depends_on    = [aws_security_group.jumpbox_svp]
	name   = "rancher_int"
	vpc_id =  var.svp_ohio_vpc_id

	dynamic "ingress" {
		for_each = local.ingress_rules_rancher_int

		content {
			description = ingress.value.description
			from_port   = ingress.value.from_port
			to_port     = ingress.value.to_port
			protocol    = ingress.value.protocol
			cidr_blocks = ingress.value.cidr_block
		}
	}
	
	dynamic "ingress" {
		for_each = local.ingress_rules_rancher_int_se

		content {
			description = ingress.value.description
			from_port   = ingress.value.from_port
			to_port     = ingress.value.to_port
			protocol    = ingress.value.protocol
			security_groups = ingress.value.security_groups
		}
	}
	
	dynamic "egress" {
		for_each = local.egress_rules_rancher_int

		content {
			description = egress.value.description
			from_port   = egress.value.from_port
			to_port     = egress.value.to_port
			protocol    = egress.value.protocol
			cidr_blocks = egress.value.cidr_block
		}
	}
	tags = {
		Name = "rancher_int"
		Env  = "svp_cst"
	}
}

resource "aws_security_group" "rancher_dmz" {
	depends_on    = [aws_security_group.jumpbox_svp]
	name   = "rancher_dmz"
	vpc_id =  var.svp_ohio_vpc_id

	dynamic "ingress" {
		for_each = local.ingress_rules_rancher_dmz

		content {
			description = ingress.value.description
			from_port   = ingress.value.from_port
			to_port     = ingress.value.to_port
			protocol    = ingress.value.protocol
			cidr_blocks = ingress.value.cidr_block
		}
	}
	
	dynamic "ingress" {
		for_each = local.ingress_rules_rancher_dmz_se

		content {
			description = ingress.value.description
			from_port   = ingress.value.from_port
			to_port     = ingress.value.to_port
			protocol    = ingress.value.protocol
			security_groups = ingress.value.security_groups
		}
	}
	
	dynamic "egress" {
		for_each = local.egress_rules_rancher_dmz

		content {
			description = egress.value.description
			from_port   = egress.value.from_port
			to_port     = egress.value.to_port
			protocol    = egress.value.protocol
			cidr_blocks = egress.value.cidr_block
		}
	}
	tags = {
		Name = "rancher_dmz"
		Env  = "svp_cst"
	}
}


