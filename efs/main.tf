provider "aws" {
  #access_key = var.access_key
  #secret_key = var.secret_key
  alias  = "ohio"
  region = "us-east-2"
}

data "aws_vpc" "svp_ohio" {
	provider = aws.ohio
	filter {
		name = "cidr-block"
		values = [var.vpc_cidr]
	}
}

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

data "aws_security_group" "nfs" {
    provider = aws.ohio
    vpc_id = data.aws_vpc.svp_ohio.id
    tags = {
      Name   = "efs"
  }
}

resource "aws_efs_file_system" "this" {
  provider = aws.ohio
  count = var.create ? 1 : 0

  encrypted                       = true
  kms_key_id                      = var.efs_kms_key_id
  performance_mode                = var.performance_mode
  provisioned_throughput_in_mibps = var.throughput_mode == "provisioned" ? var.provisioned_throughput : null
  tags                            = var.additional_tags
  throughput_mode                 = var.throughput_mode
}

locals {
  subnet_ids = [data.aws_subnet.jmjs_int1.id, data.aws_subnet.jmjs_int2.id]
}

resource "aws_efs_mount_target" "this" {
  provider = aws.ohio
  count = var.create ? length(local.subnet_ids) : 0

  file_system_id  = aws_efs_file_system.this[0].id
  security_groups = [data.aws_security_group.nfs.id]
  subnet_id       = local.subnet_ids[count.index]
}

data "aws_instances" "sqid_proxy" {
        provider = aws.ohio
        instance_tags = {
      app = "sqid_proxy"
    }
    instance_state_names = ["running", "stopped"]
}

data "aws_instances" "js_dmz" {
        provider = aws.ohio
        instance_tags = {
      app = "js_dmz"
    }
    instance_state_names = ["running", "stopped"]
}

data "aws_instances" "js_int" {
        provider = aws.ohio
        instance_tags = {
      app = "js_int"
    }
    instance_state_names = ["running", "stopped"]
}

data "aws_instances" "jm_int1" {
        provider = aws.ohio
        instance_tags = {
      Name = "jm1_int"
    }
    instance_state_names = ["running", "stopped"]
}

data "aws_instances" "jm_int2" {
        provider = aws.ohio
        instance_tags = {
      Name = "jm2_int"
    }
    instance_state_names = ["running", "stopped"]
}

resource "local_file" "hosts_cfg" {
  #provider = aws.ohio
  content = templatefile("${path.module}/templates/hosts.tpl",
    {
      jenkins_primary        = data.aws_instances.jm_int1.private_ips
      jenkins_standby        = data.aws_instances.jm_int2.private_ips
      jenkins_slaves_dmz     = data.aws_instances.js_dmz.private_ips
	  jenkins_slaves_int     = data.aws_instances.js_int.private_ips
	  squid_server_hostnames = data.aws_instances.sqid_proxy.private_ips
      #count     = length(aws_instance.jenkins-slaves.*.private_ip)
	  efs_file_id            = join(" ", aws_efs_file_system.this.*.id)
      #slave_name = [01,02]
    }
  )
  filename = "${path.module}/inventory"
}

