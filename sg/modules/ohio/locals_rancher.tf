locals {
    ingress_rules_rancher_dmz = [{
        from_port  =  22
        to_port  =  22
        description  =  "ssh"
        protocol  =  "TCP"
        cidr_block  = ["10.85.7.0/26"]
    },
    {
        from_port  =  22
        to_port  =  22
        description  =  "ssh"
        protocol  =  "TCP"
        cidr_block  = ["10.85.7.64/26"]
    },
    {
        from_port  =  22
        to_port  =  22
        description  =  "ssh"
        protocol  =  "TCP"
        cidr_block  = ["10.85.7.128/26"]
    },
    {
        from_port  =  80
        to_port  =  80
        description  =  "http"
        protocol  =  "TCP"
        cidr_block  = ["10.85.7.0/26"]
    },
	{
        from_port  =  80
        to_port  =  80
        description  =  "http"
        protocol  =  "TCP"
        cidr_block  = ["10.85.7.64/26"]
    },
	{
        from_port  =  80
        to_port  =  80
        description  =  "http"
        protocol  =  "TCP"
        cidr_block  = ["10.85.7.128/26"]
    },
    {
        from_port  =  30000
        to_port  =  32767
        description  =  "ssh"
        protocol  =  "TCP"
        cidr_block  = ["10.85.7.0/26"]
	},
    {
        from_port  =  30000
        to_port  =  32767
        description  =  "ssh"
        protocol  =  "TCP"
        cidr_block  = ["10.85.7.64/26"]
    },
	{
        from_port  =  30000
        to_port  =  32767
        description  =  "ssh"
        protocol  =  "TCP"
        cidr_block  = ["10.85.7.128/26"]
    },
	{
        from_port  =  6443
        to_port  =  6443
        description  =  "ssh"
        protocol  =  "TCP"
        cidr_block  = ["10.85.7.0/26"]
    },
	{
        from_port  =  6443
        to_port  =  6443
        description  =  "ssh"
        protocol  =  "TCP"
        cidr_block  = ["10.85.7.64/26"]
    },
	{
        from_port  =  6443
        to_port  =  6443
        description  =  "ssh"
        protocol  =  "TCP"
        cidr_block  = ["10.85.7.128/26"]
    },
	{
        from_port  =  2376
        to_port  =  2376
        description  =  "ssh"
        protocol  =  "TCP"
        cidr_block  = ["10.85.7.0/26"]
    },
	{
        from_port  =  2376
        to_port  =  2376
        description  =  "ssh"
        protocol  =  "TCP"
        cidr_block  = ["10.85.7.64/26"]
    },
	{
        from_port  =  2376
        to_port  =  2376
        description  =  "ssh"
        protocol  =  "TCP"
        cidr_block  = ["10.85.7.128/26"]
    },
	{
        from_port  =  2380
        to_port  =  2380
        description  =  "ssh"
        protocol  =  "TCP"
        cidr_block  = ["10.85.7.0/26"]
    },
	{
        from_port  =  2380
        to_port  =  2380
        description  =  "ssh"
        protocol  =  "TCP"
        cidr_block  = ["10.85.7.64/26"]
    },
	{
        from_port  =  2380
        to_port  =  2380
        description  =  "ssh"
        protocol  =  "TCP"
        cidr_block  = ["10.85.7.128/26"]
    },
    {
        from_port  =  9099
        to_port  =  9099
        description  =  "ssh"
        protocol  =  "TCP"
        cidr_block  = ["10.85.7.0/26"]
    },
    {
        from_port  =  9099
        to_port  =  9099
        description  =  "ssh"
        protocol  =  "TCP"
        cidr_block  = ["10.85.7.64/26"]
    },
	{
        from_port  =  9099
        to_port  =  9099
        description  =  "ssh"
        protocol  =  "TCP"
        cidr_block  = ["10.85.7.128/26"]
    },
	{
        from_port  =  443
        to_port  =  443
        description  =  "https"
        protocol  =  "TCP"
        cidr_block  = ["10.85.7.0/26"]
    },
	{
        from_port  =  443
        to_port  =  443
        description  =  "https"
        protocol  =  "TCP"
        cidr_block  = ["10.85.7.64/26"]
    },
	{
        from_port  =  443
        to_port  =  443
        description  =  "https"
        protocol  =  "TCP"
        cidr_block  = ["10.85.7.128/26"]
    },
	{
        from_port  =  10250
        to_port  =  10250
        description  =  "ssh"
        protocol  =  "TCP"
        cidr_block  = ["10.85.7.0/26"]
    },
	{
        from_port  =  10250
        to_port  =  10250
        description  =  "ssh"
        protocol  =  "TCP"
        cidr_block  = ["10.85.7.64/26"]
    },
	{
        from_port  =  10250
        to_port  =  10250
        description  =  "ssh"
        protocol  =  "TCP"
        cidr_block  = ["10.85.7.128/26"]
    },
	{
        from_port  =  2379
        to_port  =  2379
        description  =  "ssh"
        protocol  =  "TCP"
        cidr_block  = ["10.85.7.0/26"]
    },
	{
        from_port  =  2379
        to_port  =  2379
        description  =  "ssh"
        protocol  =  "TCP"
        cidr_block  = ["10.85.7.64/26"]
    },
	{
        from_port  =  2379
        to_port  =  2379
        description  =  "ssh"
        protocol  =  "TCP"
        cidr_block  = ["10.85.7.128/26"]
    },
	{
        from_port  =  10254
        to_port  =  10254
        description  =  "ssh"
        protocol  =  "TCP"
        cidr_block  = ["10.85.7.0/26"]
    },
	{
        from_port  =  10254
        to_port  =  10254
        description  =  "ssh"
        protocol  =  "TCP"
        cidr_block  = ["10.85.7.64/26"]
    },
	{
        from_port  =  10254
        to_port  =  10254
        description  =  "ssh"
        protocol  =  "TCP"
        cidr_block  = ["10.85.7.128/26"]
	},
	{
        from_port  =  8472
        to_port  =  8472
        description  =  "otv"
        protocol  =  "UDP"
        cidr_block  = ["10.85.7.0/26"]
	},
	{
        from_port  =  8472
        to_port  =  8472
        description  =  "otv"
        protocol  =  "UDP"
        cidr_block  = ["10.85.7.64/26"]
	},
	{
        from_port  =  8472
        to_port  =  8472
        description  =  "otv"
        protocol  =  "UDP"
        cidr_block  = ["10.85.7.128/26"]
    }]
	
	ingress_rules_rancher_dmz_se = [{
		from_port  =  22 
		to_port  =  22 
		description  =  "ssh" 
		protocol  =  "TCP" 
		security_groups  = [aws_security_group.jumpbox_svp.id]
	}]
	
	egress_rules_rancher_dmz = [{
        from_port   = 0
        to_port     = 65535
        description = "egress_rules"
        protocol    = "All"
        cidr_block  = ["0.0.0.0/0"]
    }]
}

####################################
# INT
####################################
locals {
    ingress_rules_rancher_int = [{
        from_port  =  22
        to_port  =  22
        description  =  "ssh"
        protocol  =  "TCP"
        cidr_block  = ["10.85.6.64/26"]
    },
    {
        from_port  =  22
        to_port  =  22
        description  =  "ssh"
        protocol  =  "TCP"
        cidr_block  = ["10.85.6.128/26"]
    },
    {
        from_port  =  22
        to_port  =  22
        description  =  "ssh"
        protocol  =  "TCP"
        cidr_block  = ["10.85.6.192/26"]
    },
    {
        from_port  =  80
        to_port  =  80
        description  =  "ssh"
        protocol  =  "TCP"
        cidr_block  = ["10.85.6.64/26"]
    },
	{
        from_port  =  80
        to_port  =  80
        description  =  "ssh"
        protocol  =  "TCP"
        cidr_block  = ["10.85.6.128/26"]
    },
	{
        from_port  =  80
        to_port  =  80
        description  =  "ssh"
        protocol  =  "TCP"
        cidr_block  = ["10.85.6.192/26"]
    },
    {
        from_port  =  30000
        to_port  =  32767
        description  =  "ssh"
        protocol  =  "TCP"
        cidr_block  = ["10.85.6.64/26"]
	},
    {
        from_port  =  30000
        to_port  =  32767
        description  =  "ssh"
        protocol  =  "TCP"
        cidr_block  = ["10.85.6.128/26"]
    },
	{
        from_port  =  30000
        to_port  =  32767
        description  =  "ssh"
        protocol  =  "TCP"
        cidr_block  = ["10.85.6.192/26"]
    },
	{
        from_port  =  6443
        to_port  =  6443
        description  =  "ssh"
        protocol  =  "TCP"
        cidr_block  = ["10.85.6.64/26"]
    },
	{
        from_port  =  6443
        to_port  =  6443
        description  =  "ssh"
        protocol  =  "TCP"
        cidr_block  = ["10.85.6.128/26"]
    },
	{
        from_port  =  6443
        to_port  =  6443
        description  =  "ssh"
        protocol  =  "TCP"
        cidr_block  = ["10.85.6.192/26"]
    },
	{
        from_port  =  2376
        to_port  =  2376
        description  =  "ssh"
        protocol  =  "TCP"
        cidr_block  = ["10.85.6.64/26"]
    },
	{
        from_port  =  2376
        to_port  =  2376
        description  =  "ssh"
        protocol  =  "TCP"
        cidr_block  = ["10.85.6.128/26"]
    },
	{
        from_port  =  2376
        to_port  =  2376
        description  =  "ssh"
        protocol  =  "TCP"
        cidr_block  = ["10.85.6.192/26"]
    },
	{
        from_port  =  2380
        to_port  =  2380
        description  =  "ssh"
        protocol  =  "TCP"
        cidr_block  = ["10.85.6.64/26"]
    },
	{
        from_port  =  2380
        to_port  =  2380
        description  =  "ssh"
        protocol  =  "TCP"
        cidr_block  = ["10.85.6.128/26"]
    },
	{
        from_port  =  2380
        to_port  =  2380
        description  =  "ssh"
        protocol  =  "TCP"
        cidr_block  = ["10.85.6.192/26"]
    },
    {
        from_port  =  9099
        to_port  =  9099
        description  =  "ssh"
        protocol  =  "TCP"
        cidr_block  = ["10.85.6.64/26"]
    },
    {
        from_port  =  9099
        to_port  =  9099
        description  =  "ssh"
        protocol  =  "TCP"
        cidr_block  = ["10.85.6.128/26"]
    },
	{
        from_port  =  9099
        to_port  =  9099
        description  =  "ssh"
        protocol  =  "TCP"
        cidr_block  = ["10.85.6.192/26"]
    },
	{
        from_port  =  443
        to_port  =  443
        description  =  "ssh"
        protocol  =  "TCP"
        cidr_block  = ["10.85.6.64/26"]
    },
	{
        from_port  =  443
        to_port  =  443
        description  =  "ssh"
        protocol  =  "TCP"
        cidr_block  = ["10.85.6.128/26"]
    },
	{
        from_port  =  443
        to_port  =  443
        description  =  "ssh"
        protocol  =  "TCP"
        cidr_block  = ["10.85.6.192/26"]
    },
	{
        from_port  =  10250
        to_port  =  10250
        description  =  "ssh"
        protocol  =  "TCP"
        cidr_block  = ["10.85.6.64/26"]
    },
	{
        from_port  =  10250
        to_port  =  10250
        description  =  "ssh"
        protocol  =  "TCP"
        cidr_block  = ["10.85.6.128/26"]
    },
	{
        from_port  =  10250
        to_port  =  10250
        description  =  "ssh"
        protocol  =  "TCP"
        cidr_block  = ["10.85.6.192/26"]
    },
	{
        from_port  =  2379
        to_port  =  2379
        description  =  "ssh"
        protocol  =  "TCP"
        cidr_block  = ["10.85.6.64/26"]
    },
	{
        from_port  =  2379
        to_port  =  2379
        description  =  "ssh"
        protocol  =  "TCP"
        cidr_block  = ["10.85.6.128/26"]
    },
	{
        from_port  =  2379
        to_port  =  2379
        description  =  "ssh"
        protocol  =  "TCP"
        cidr_block  = ["10.85.6.192/26"]
    },
	{
        from_port  =  10254
        to_port  =  10254
        description  =  "ssh"
        protocol  =  "TCP"
        cidr_block  = ["10.85.6.64/26"]
    },
	{
        from_port  =  10254
        to_port  =  10254
        description  =  "ssh"
        protocol  =  "TCP"
        cidr_block  = ["10.85.6.128/26"]
    },
	{
        from_port  =  10254
        to_port  =  10254
        description  =  "ssh"
        protocol  =  "TCP"
        cidr_block  = ["10.85.6.192/26"]
	},
	{
        from_port  =  8472
        to_port  =  8472
        description  =  "ssh"
        protocol  =  "UDP"
        cidr_block  = ["10.85.6.64/26"]
	},
	{
        from_port  =  8472
        to_port  =  8472
        description  =  "ssh"
        protocol  =  "UDP"
        cidr_block  = ["10.85.6.128/26"]
	},
	{
        from_port  =  8472
        to_port  =  8472
        description  =  "ssh"
        protocol  =  "UDP"
        cidr_block  = ["10.85.6.192/26"]
    }]
	
	ingress_rules_rancher_int_se = [{
		from_port  =  22 
		to_port  =  22 
		description  =  "ssh" 
		protocol  =  "TCP" 
		security_groups  = [aws_security_group.jumpbox_svp.id]
	}]
	
	egress_rules_rancher_int = [{
        from_port   = 0
        to_port     = 65535
        description = "egress_rules"
        protocol    = "All"
        cidr_block  = ["0.0.0.0/0"]
    }]
	
}

