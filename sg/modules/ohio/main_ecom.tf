resource "aws_security_group" "common_portal" {
	depends_on    = [aws_security_group.jumpbox_svp]
	name   = "common_portal"
	vpc_id =  var.svp_ohio_vpc_id

	dynamic "ingress" {
		for_each = local.ingress_rules_common_portal

		content {
			description = ingress.value.description
			from_port   = ingress.value.from_port
			to_port     = ingress.value.to_port
			protocol    = ingress.value.protocol
			cidr_blocks = ingress.value.cidr_block
		}
	}
	
	dynamic "ingress" {
		for_each = local.ingress_rules_common_portal_se

		content {
			description = ingress.value.description
			from_port   = ingress.value.from_port
			to_port     = ingress.value.to_port
			protocol    = ingress.value.protocol
			security_groups = ingress.value.security_groups
		}
	}
	
	dynamic "egress" {
		for_each = local.egress_rules_common_portal

		content {
			description = egress.value.description
			from_port   = egress.value.from_port
			to_port     = egress.value.to_port
			protocol    = egress.value.protocol
			cidr_blocks = egress.value.cidr_block
		}
	}
	tags = {
		Name = "common_portal"
		Env  = "svp_cst"
	}
}

resource "aws_security_group" "jsclient" {
	depends_on    = [aws_security_group.jumpbox_svp]
	name   = "jsclient"
	vpc_id =  var.svp_ohio_vpc_id

	dynamic "ingress" {
		for_each = local.ingress_rules_jsclient

		content {
			description = ingress.value.description
			from_port   = ingress.value.from_port
			to_port     = ingress.value.to_port
			protocol    = ingress.value.protocol
			cidr_blocks = ingress.value.cidr_block
		}
	}
	
	dynamic "ingress" {
		for_each = local.ingress_rules_jsclient_se

		content {
			description = ingress.value.description
			from_port   = ingress.value.from_port
			to_port     = ingress.value.to_port
			protocol    = ingress.value.protocol
			security_groups = ingress.value.security_groups
		}
	}
	
	dynamic "egress" {
		for_each = local.egress_rules_jsclient

		content {
			description = egress.value.description
			from_port   = egress.value.from_port
			to_port     = egress.value.to_port
			protocol    = egress.value.protocol
			cidr_blocks = egress.value.cidr_block
		}
	}
	tags = {
		Name = "jsclient"
		Env  = "svp_cst"
	}
}

resource "aws_security_group" "threed_secure" {
	depends_on    = [aws_security_group.jumpbox_svp]
	name   = "threed_secure"
	vpc_id =  var.svp_ohio_vpc_id

	dynamic "ingress" {
		for_each = local.ingress_rules_threed_secure

		content {
			description = ingress.value.description
			from_port   = ingress.value.from_port
			to_port     = ingress.value.to_port
			protocol    = ingress.value.protocol
			cidr_blocks = ingress.value.cidr_block
		}
	}
	
	dynamic "ingress" {
		for_each = local.ingress_rules_threed_secure_se

		content {
			description = ingress.value.description
			from_port   = ingress.value.from_port
			to_port     = ingress.value.to_port
			protocol    = ingress.value.protocol
			security_groups = ingress.value.security_groups
		}
	}
	
	dynamic "egress" {
		for_each = local.egress_rules_threed_secure

		content {
			description = egress.value.description
			from_port   = egress.value.from_port
			to_port     = egress.value.to_port
			protocol    = egress.value.protocol
			cidr_blocks = egress.value.cidr_block
		}
	}
	tags = {
		Name = "threed_secure"
		Env  = "svp_cst"
	}
}

resource "aws_security_group" "checkout" {
	depends_on    = [aws_security_group.jumpbox_svp]
	name   = "checkout"
	vpc_id =  var.svp_ohio_vpc_id

	dynamic "ingress" {
		for_each = local.ingress_rules_checkout

		content {
			description = ingress.value.description
			from_port   = ingress.value.from_port
			to_port     = ingress.value.to_port
			protocol    = ingress.value.protocol
			cidr_blocks = ingress.value.cidr_block
		}
	}
	
	dynamic "ingress" {
		for_each = local.ingress_rules_checkout_se

		content {
			description = ingress.value.description
			from_port   = ingress.value.from_port
			to_port     = ingress.value.to_port
			protocol    = ingress.value.protocol
			security_groups = ingress.value.security_groups
		}
	}
	
	dynamic "egress" {
		for_each = local.egress_rules_checkout

		content {
			description = egress.value.description
			from_port   = egress.value.from_port
			to_port     = egress.value.to_port
			protocol    = egress.value.protocol
			cidr_blocks = egress.value.cidr_block
		}
	}
	tags = {
		Name = "checkout"
		Env  = "svp_cst"
	}
}

resource "aws_security_group" "ecom_api" {
	depends_on    = [aws_security_group.jumpbox_svp]
	name   = "ecom_api"
	vpc_id =  var.svp_ohio_vpc_id

	dynamic "ingress" {
		for_each = local.ingress_rules_ecom_api

		content {
			description = ingress.value.description
			from_port   = ingress.value.from_port
			to_port     = ingress.value.to_port
			protocol    = ingress.value.protocol
			cidr_blocks = ingress.value.cidr_block
		}
	}
	
	dynamic "ingress" {
		for_each = local.ingress_rules_ecom_api_se

		content {
			description = ingress.value.description
			from_port   = ingress.value.from_port
			to_port     = ingress.value.to_port
			protocol    = ingress.value.protocol
			security_groups = ingress.value.security_groups
		}
	}
	
	dynamic "egress" {
		for_each = local.egress_rules_ecom_api

		content {
			description = egress.value.description
			from_port   = egress.value.from_port
			to_port     = egress.value.to_port
			protocol    = egress.value.protocol
			cidr_blocks = egress.value.cidr_block
		}
	}
	tags = {
		Name = "ecom_api"
		Env  = "svp_cst"
	}
}

resource "aws_security_group" "stan_service" {
	depends_on    = [aws_security_group.jumpbox_svp]
	name   = "stan_service"
	vpc_id =  var.svp_ohio_vpc_id

	dynamic "ingress" {
		for_each = local.ingress_rules_stan_service

		content {
			description = ingress.value.description
			from_port   = ingress.value.from_port
			to_port     = ingress.value.to_port
			protocol    = ingress.value.protocol
			cidr_blocks = ingress.value.cidr_block
		}
	}
	
	dynamic "ingress" {
		for_each = local.ingress_rules_stan_service_se

		content {
			description = ingress.value.description
			from_port   = ingress.value.from_port
			to_port     = ingress.value.to_port
			protocol    = ingress.value.protocol
			security_groups = ingress.value.security_groups
		}
	}
	
	dynamic "egress" {
		for_each = local.egress_rules_stan_service

		content {
			description = egress.value.description
			from_port   = egress.value.from_port
			to_port     = egress.value.to_port
			protocol    = egress.value.protocol
			cidr_blocks = egress.value.cidr_block
		}
	}
	tags = {
		Name = "stan_service"
		Env  = "svp_cst"
	}
}

resource "aws_security_group" "validation_service" {
	depends_on    = [aws_security_group.jumpbox_svp]
	name   = "validation_service"
	vpc_id =  var.svp_ohio_vpc_id

	dynamic "ingress" {
		for_each = local.ingress_rules_validation_service

		content {
			description = ingress.value.description
			from_port   = ingress.value.from_port
			to_port     = ingress.value.to_port
			protocol    = ingress.value.protocol
			cidr_blocks = ingress.value.cidr_block
		}
	}
	
	dynamic "ingress" {
		for_each = local.ingress_rules_validation_service_se

		content {
			description = ingress.value.description
			from_port   = ingress.value.from_port
			to_port     = ingress.value.to_port
			protocol    = ingress.value.protocol
			security_groups = ingress.value.security_groups
		}
	}
	
	dynamic "egress" {
		for_each = local.egress_rules_validation_service

		content {
			description = egress.value.description
			from_port   = egress.value.from_port
			to_port     = egress.value.to_port
			protocol    = egress.value.protocol
			cidr_blocks = egress.value.cidr_block
		}
	}
	tags = {
		Name = "validation_service"
		Env  = "svp_cst"
	}
}

resource "aws_security_group" "tid-manager" {
	depends_on    = [aws_security_group.jumpbox_svp]
	name   = "tid-manager"
	vpc_id =  var.svp_ohio_vpc_id

	dynamic "ingress" {
		for_each = local.ingress_rules_tid-manager

		content {
			description = ingress.value.description
			from_port   = ingress.value.from_port
			to_port     = ingress.value.to_port
			protocol    = ingress.value.protocol
			cidr_blocks = ingress.value.cidr_block
		}
	}
	
	dynamic "ingress" {
		for_each = local.ingress_rules_tid-manager_se

		content {
			description = ingress.value.description
			from_port   = ingress.value.from_port
			to_port     = ingress.value.to_port
			protocol    = ingress.value.protocol
			security_groups = ingress.value.security_groups
		}
	}
	
	dynamic "egress" {
		for_each = local.egress_rules_tid-manager

		content {
			description = egress.value.description
			from_port   = egress.value.from_port
			to_port     = egress.value.to_port
			protocol    = egress.value.protocol
			cidr_blocks = egress.value.cidr_block
		}
	}
	tags = {
		Name = "tid-manager"
		Env  = "svp_cst"
	}
}

resource "aws_security_group" "customer_service" {
	depends_on    = [aws_security_group.jumpbox_svp]
	name   = "customer_service"
	vpc_id =  var.svp_ohio_vpc_id

	dynamic "ingress" {
		for_each = local.ingress_rules_customer_service

		content {
			description = ingress.value.description
			from_port   = ingress.value.from_port
			to_port     = ingress.value.to_port
			protocol    = ingress.value.protocol
			cidr_blocks = ingress.value.cidr_block
		}
	}
	
	dynamic "ingress" {
		for_each = local.ingress_rules_customer_service_se

		content {
			description = ingress.value.description
			from_port   = ingress.value.from_port
			to_port     = ingress.value.to_port
			protocol    = ingress.value.protocol
			security_groups = ingress.value.security_groups
		}
	}
	
	dynamic "egress" {
		for_each = local.egress_rules_customer_service

		content {
			description = egress.value.description
			from_port   = egress.value.from_port
			to_port     = egress.value.to_port
			protocol    = egress.value.protocol
			cidr_blocks = egress.value.cidr_block
		}
	}
	tags = {
		Name = "customer_service"
		Env  = "svp_cst"
	}
}




