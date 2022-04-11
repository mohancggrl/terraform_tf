locals {
    ingress_rules_js_dmz_svp = [{
		from_port  =  80 
		to_port  =  80 
		description  =  "joc to ohio" 
		protocol  =  "TCP" 
		cidr_block  = ["10.83.0.0/25"]
	}]
	egress_rules_js_dmz_svp = [{
		from_port   = 0
		to_port     = 65535
		description = "egress_rules"
		protocol    = "All"
		cidr_block  = ["0.0.0.0/0"]
    }]
	
    ingress_rules_ecom_dmz_svp = [{
		from_port  =  80 
		to_port  =  80 
		description  =  "joc to ohio" 
		protocol  =  "TCP" 
		cidr_block  = ["10.83.0.0/25"]
	}]
	egress_rules_ecom_dmz_svp = [{
		from_port   = 0
		to_port     = 65535
		description = "egress_rules"
		protocol    = "All"
		cidr_block  = ["0.0.0.0/0"]
    }]
	
    ingress_rules_am_dmz_svp = [{
		from_port  =  80 
		to_port  =  80 
		description  =  "joc to ohio"
		protocol  =  "TCP" 
		cidr_block  = ["10.83.0.0/25"]
	}]
	egress_rules_am_dmz_svp = [{
		from_port   = 0
		to_port     = 65535
		description = "egress_rules"
		protocol    = "All"
		cidr_block  = ["0.0.0.0/0"]
    }]
	
#=============== INT =====
	
    ingress_rules_js_int_svp = [{
		from_port  =  80 
		to_port  =  80 
		description  =  "joc to ohio" 
		protocol  =  "TCP" 
		cidr_block  = ["10.83.0.0/25"]
	}]
	egress_rules_js_int_svp = [{
		from_port   = 0
		to_port     = 65535
		description = "egress_rules"
		protocol    = "All"
		cidr_block  = ["0.0.0.0/0"]
    }]
	
    ingress_rules_jm_int_svp = [{
		from_port  =  80 
		to_port  =  80 
		description  =  "joc to ohio" 
		protocol  =  "TCP" 
		cidr_block  = ["10.83.0.0/25"]
	}]
	egress_rules_jm_int_svp = [{
		from_port   = 0
		to_port     = 65535
		description = "egress_rules"
		protocol    = "All"
		cidr_block  = ["0.0.0.0/0"]
    }]
	
    ingress_rules_ecom_int_svp = [{
		from_port  =  80 
		to_port  =  80 
		description  =  "joc to ohio" 
		protocol  =  "TCP" 
		cidr_block  = ["10.83.0.0/25"]
	}]
	egress_rules_ecom_int_svp = [{
		from_port   = 0
		to_port     = 65535
		description = "egress_rules"
		protocol    = "All"
		cidr_block  = ["0.0.0.0/0"]
    }]
	
    ingress_rules_am_int_svp = [{
		from_port  =  80 
		to_port  =  80 
		description  =  "joc to ohio"
		protocol  =  "TCP" 
		cidr_block  = ["10.83.0.0/25"]
	}]
	egress_rules_am_int_svp = [{
		from_port   = 0
		to_port     = 65535
		description = "egress_rules"
		protocol    = "All"
		cidr_block  = ["0.0.0.0/0"]
    }]
	
    ingress_rules_elb_sp_svp = [{
		from_port  =  80 
		to_port  =  80 
		description  =  "joc to ohio"
		protocol  =  "TCP" 
		cidr_block  = ["10.83.0.0/25"]
	}]
	egress_rules_elb_sp_svp = [{
		from_port   = 0
		to_port     = 65535
		description = "egress_rules"
		protocol    = "All"
		cidr_block  = ["0.0.0.0/0"]
    }]
	
	ingress_rules_elb_jm_svp = [{
		from_port  =  80 
		to_port  =  80 
		description  =  "joc to ohio"
		protocol  =  "TCP" 
		cidr_block  = ["10.83.0.0/25"]
	}]
	egress_rules_elb_jm_svp = [{
		from_port   = 0
		to_port     = 65535
		description = "egress_rules"
		protocol    = "All"
		cidr_block  = ["0.0.0.0/0"]
    }]
	
#====== se=====
	ingress_rules_js_int_svp_se = [{
		from_port  =  22 
		to_port  =  22 
		description  =  "ssh" 
		protocol  =  "TCP" 
		security_groups  = [aws_security_group.jumpbox_svp.id]
	},
	{
	    from_port  =  22 
		to_port  =  22 
		description  =  "ssh" 
		protocol  =  "TCP" 
		security_groups  = [aws_security_group.jm_int_svp.id]
	}]
	ingress_rules_js_dmz_svp_se = [{
		from_port  =  22 
		to_port  =  22 
		description  =  "ssh" 
		protocol  =  "TCP" 
		security_groups  = [aws_security_group.jumpbox_svp.id]
	},
	{
		from_port  =  22 
		to_port  =  22 
		description  =  "ssh" 
		protocol  =  "TCP" 
		security_groups  = [aws_security_group.jm_int_svp.id]
	}]
	
	ingress_rules_jm_int_svp_se = [{
		from_port  =  22 
		to_port  =  22 
		description  =  "ssh" 
		protocol  =  "TCP" 
		security_groups  = [aws_security_group.jumpbox_svp.id]
	}]
	
#sqid proxy
    ingress_rules_sqid_proxy = [{
		from_port  =  80 
		to_port  =  80 
		description  =  "joc to ohio" 
		protocol  =  "TCP" 
		cidr_block  = ["10.83.0.0/25"]
	}]
	egress_rules_sqid_proxy = [{
		from_port   = 0
		to_port     = 65535
		description = "egress_rules"
		protocol    = "All"
		cidr_block  = ["0.0.0.0/0"]
    }]
	ingress_rules_sqid_proxy_se = [{
		from_port  =  22 
		to_port  =  22 
		description  =  "ssh" 
		protocol  =  "TCP" 
		security_groups  = [aws_security_group.jumpbox_svp.id]
	}]
	
}
