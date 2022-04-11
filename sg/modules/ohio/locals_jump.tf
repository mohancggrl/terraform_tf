locals {
    ingress_rules_jumpbox_svp = [{
		from_port  = 22 
		to_port  = 22 
		description  = "ssh_JumpBox" 
		protocol  = "TCP" 
		cidr_block  = ["0.0.0.0/0"]
	},
	{
		from_port  =  3389 
		to_port  =  3389 
		description  =  "Windows jump box" 
		protocol  =  "TCP" 
		cidr_block  = ["10.80.38.115/32"]
	}]
	egress_rules_jumpbox_svp = [{
		from_port   = 0
		to_port     = 65535
		description = "egress_rules"
		protocol    = "All"
		cidr_block  = ["0.0.0.0/0"]
    }]
}
