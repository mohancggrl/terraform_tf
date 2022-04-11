locals {
    ingress_rules_common_portal = [{
		from_port  =  80 
		to_port  =  80 
		description  =  "joc to ohio" 
		protocol  =  "TCP" 
		cidr_block  = ["10.83.0.0/25"]
	}]
	ingress_rules_common_portal_se = [{
		from_port  =  22 
		to_port  =  22 
		description  =  "ssh" 
		protocol  =  "TCP" 
		security_groups  = [aws_security_group.jumpbox_svp.id]
    }]	
	egress_rules_common_portal = [{
		from_port   = 0
		to_port     = 65535
		description = "egress_rules"
		protocol    = "All"
		cidr_block  = ["0.0.0.0/0"]
    }]

    ingress_rules_jsclient = [{
		from_port  =  80 
		to_port  =  80 
		description  =  "joc to ohio" 
		protocol  =  "TCP" 
		cidr_block  = ["10.83.0.0/25"]
	}]
	ingress_rules_jsclient_se = [{
		from_port  =  22 
		to_port  =  22 
		description  =  "ssh" 
		protocol  =  "TCP" 
		security_groups  = [aws_security_group.jumpbox_svp.id]
	}]	
	egress_rules_jsclient = [{
		from_port   = 0
		to_port     = 65535
		description = "egress_rules"
		protocol    = "All"
		cidr_block  = ["0.0.0.0/0"]
    }]

    ingress_rules_threed_secure = [{
		from_port  =  80 
		to_port  =  80 
		description  =  "joc to ohio" 
		protocol  =  "TCP" 
		cidr_block  = ["10.83.0.0/25"]
	}]
	ingress_rules_threed_secure_se = [{
		from_port  =  22 
		to_port  =  22 
		description  =  "ssh" 
		protocol  =  "TCP" 
		security_groups  = [aws_security_group.jumpbox_svp.id]
	}]	
	egress_rules_threed_secure = [{
		from_port   = 0
		to_port     = 65535
		description = "egress_rules"
		protocol    = "All"
		cidr_block  = ["0.0.0.0/0"]
    }]

    ingress_rules_checkout = [{
		from_port  =  80 
		to_port  =  80 
		description  =  "joc to ohio" 
		protocol  =  "TCP" 
		cidr_block  = ["10.83.0.0/25"]
	}]
	ingress_rules_checkout_se = [{
		from_port  =  22 
		to_port  =  22 
		description  =  "ssh" 
		protocol  =  "TCP" 
		security_groups  = [aws_security_group.jumpbox_svp.id]
	}]	
	egress_rules_checkout = [{
		from_port   = 0
		to_port     = 65535
		description = "egress_rules"
		protocol    = "All"
		cidr_block  = ["0.0.0.0/0"]
    }]

    ingress_rules_ecom_api = [{
		from_port  =  80 
		to_port  =  80 
		description  =  "joc to ohio" 
		protocol  =  "TCP" 
		cidr_block  = ["10.83.0.0/25"]
	}]
	ingress_rules_ecom_api_se = [{
		from_port  =  22 
		to_port  =  22 
		description  =  "ssh" 
		protocol  =  "TCP" 
		security_groups  = [aws_security_group.jumpbox_svp.id]
	}]	
	egress_rules_ecom_api = [{
		from_port   = 0
		to_port     = 65535
		description = "egress_rules"
		protocol    = "All"
		cidr_block  = ["0.0.0.0/0"]
    }]

    ingress_rules_stan_service = [{
		from_port  =  80 
		to_port  =  80 
		description  =  "joc to ohio" 
		protocol  =  "TCP" 
		cidr_block  = ["10.83.0.0/25"]
	}]
	ingress_rules_stan_service_se = [{
		from_port  =  22 
		to_port  =  22 
		description  =  "ssh" 
		protocol  =  "TCP" 
		security_groups  = [aws_security_group.jumpbox_svp.id]
	}]	
	egress_rules_stan_service = [{
		from_port   = 0
		to_port     = 65535
		description = "egress_rules"
		protocol    = "All"
		cidr_block  = ["0.0.0.0/0"]
    }]

    ingress_rules_validation_service = [{
		from_port  =  80 
		to_port  =  80 
		description  =  "joc to ohio" 
		protocol  =  "TCP" 
		cidr_block  = ["10.83.0.0/25"]
	}]
	ingress_rules_validation_service_se = [{
		from_port  =  22 
		to_port  =  22 
		description  =  "ssh" 
		protocol  =  "TCP" 
		security_groups  = [aws_security_group.jumpbox_svp.id]
	}]	
	egress_rules_validation_service = [{
		from_port   = 0
		to_port     = 65535
		description = "egress_rules"
		protocol    = "All"
		cidr_block  = ["0.0.0.0/0"]
    }]

    ingress_rules_tid-manager = [{
		from_port  =  80 
		to_port  =  80 
		description  =  "joc to ohio" 
		protocol  =  "TCP" 
		cidr_block  = ["10.83.0.0/25"]
	}]
	ingress_rules_tid-manager_se = [{
		from_port  =  22 
		to_port  =  22 
		description  =  "ssh" 
		protocol  =  "TCP" 
		security_groups  = [aws_security_group.jumpbox_svp.id]
	}]	
	egress_rules_tid-manager = [{
		from_port   = 0
		to_port     = 65535
		description = "egress_rules"
		protocol    = "All"
		cidr_block  = ["0.0.0.0/0"]
    }]

    ingress_rules_customer_service = [{
		from_port  =  80 
		to_port  =  80 
		description  =  "joc to ohio" 
		protocol  =  "TCP" 
		cidr_block  = ["10.83.0.0/25"]
	}]
	ingress_rules_customer_service_se = [{
		from_port  =  22 
		to_port  =  22 
		description  =  "ssh" 
		protocol  =  "TCP" 
		security_groups  = [aws_security_group.jumpbox_svp.id]
	}]	
	egress_rules_customer_service = [{
		from_port   = 0
		to_port     = 65535
		description = "egress_rules"
		protocol    = "All"
		cidr_block  = ["0.0.0.0/0"]
    }]
}
