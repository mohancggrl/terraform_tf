variable "access_key" {
  description = "AWS ACCESS_KEY"
  default     = "access_key"
}

variable "secret_key" {
  description = "AWS SECRET_KEY"
  default     = "secret_key"
}


variable "region" {
  description = "aws region"
  default     = "eu-west-2"
}

#===Jump ======

variable "ami_jump_svp" {
  description = "ami id"
  default     = "ami-03d64741867e7bb94"
}

variable "ec2_count_jump_svp" {
  description = "ec2 intance count"
  default     = 1
}

variable "instance_type_jump_svp" {
  description = "instance type"
  default     = "t3.medium"
}

variable "key_name_jump_svp" {
  description = "pem key name"
  default     = "rhel_som"
}

variable "name_jump_svp" {
  description = "name of the vpc"
  default     = "jump_svp"
}

variable "ssh_private_key_file" {
  description = "ssh private key file"
  default     = "rhel_som"
}

variable "volume_size_jump_svp" {
  description = "volume size"
  default     = "10"
}

variable "env_jump_svp" {
  description = "env name"
  default     = "Prod"
}


#===Jump_win ======

variable "ami_jump_svp1" {
  description = "ami id"
  default     = "ami-0b697c4ae566cad55"
}

variable "ec2_count_jump_svp1" {
  description = "ec2 intance count"
  default     = 1
}

variable "instance_type_jump_svp1" {
  description = "instance type"
  default     = "t3.medium"
}

variable "key_name_jump_svp1" {
  description = "pem key name"
  default     = "rhel_som"
}

variable "name_jump_svp1" {
  description = "name of the vpc"
  default     = "jump_win"
}

variable "ssh_private_key_file1" {
  description = "ssh private key file"
  default     = "rhel_som"
}

variable "volume_size_jump_svp1" {
  description = "volume size"
  default     = "30"
}

variable "env_jump_svp1" {
  description = "env name"
  default     = "Prod"
}

#===js1_dmz======
variable "ami_js1_dmz" {
  description = "ami id"
  default     = "ami-03d64741867e7bb94"
}

variable "ec2_count_js1_dmz" {
  description = "ec2 intance count"
  default     = 1
}

variable "instance_type_js1_dmz" {
  description = "instance type"
  default     = "t3.medium"
}

variable "key_name_js1_dmz" {
  description = "pem key name"
  default     = "rhel_som"
}

variable "name_js1_dmz" {
  description = "name of the vpc"
  default     = "js1_dmz"
}


variable "volume_size_js1_dmz" {
  description = "volume size"
  default     = "10"
}

variable "env_js1_dmz" {
  description = "env name"
  default     = "Prod"
}

#===js2_dmz======
variable "ami_js2_dmz" {
  description = "ami id"
  default     = "ami-03d64741867e7bb94"
}

variable "ec2_count_js2_dmz" {
  description = "ec2 intance count"
  default     = 1
}

variable "instance_type_js2_dmz" {
  description = "instance type"
  default     = "t3.medium"
}

variable "key_name_js2_dmz" {
  description = "pem key name"
  default     = "rhel_som"
}

variable "name_js2_dmz" {
  description = "name of the vpc"
  default     = "js2_dmz"
}


variable "volume_size_js2_dmz" {
  description = "volume size"
  default     = "10"
}

variable "env_js2_dmz" {
  description = "env name"
  default     = "Prod"
}

#=====INT



#===js1_int======
variable "ami_js1_int" {
  description = "ami id"
  default     = "ami-03d64741867e7bb94"
}

variable "ec2_count_js1_int" {
  description = "ec2 intance count"
  default     = 1
}

variable "instance_type_js1_int" {
  description = "instance type"
  default     = "t3.medium"
}

variable "key_name_js1_int" {
  description = "pem key name"
  default     = "rhel_som"
}

variable "name_js1_int" {
  description = "name of the vpc"
  default     = "js1_int"
}

variable "volume_size_js1_int" {
  description = "volume size"
  default     = "10"
}

variable "env_js1_int" {
  description = "env name"
  default     = "Prod"
}

#===js2_int======
variable "ami_js2_int" {
  description = "ami id"
  default     = "ami-03d64741867e7bb94"
}

variable "ec2_count_js2_int" {
  description = "ec2 intance count"
  default     = 1
}

variable "instance_type_js2_int" {
  description = "instance type"
  default     = "t3.medium"
}

variable "key_name_js2_int" {
  description = "pem key name"
  default     = "rhel_som"
}

variable "name_js2_int" {
  description = "name of the vpc"
  default     = "js2_int"
}

variable "volume_size_js2_int" {
  description = "volume size"
  default     = "10"
}

variable "env_js2_int" {
  description = "env name"
  default     = "Prod"
}


#====
#====
#++++
#===jm1_int======
variable "ami_jm1_int" {
  description = "ami id"
  default     = "ami-03d64741867e7bb94"
}

variable "ec2_count_jm1_int" {
  description = "ec2 intance count"
  default     = 1
}

variable "instance_type_jm1_int" {
  description = "instance type"
  default     = "t3.medium"
}

variable "key_name_jm1_int" {
  description = "pem key name"
  default     = "rhel_som"
}

variable "name_jm1_int" {
  description = "name of the vpc"
  default     = "jm1_int"
}


variable "volume_size_jm1_int" {
  description = "volume size"
  default     = "10"
}

variable "env_jm1_int" {
  description = "env name"
  default     = "Prod"
}

#===jm2_int======
variable "ami_jm2_int" {
  description = "ami id"
  default     = "ami-03d64741867e7bb94"
}

variable "ec2_count_jm2_int" {
  description = "ec2 intance count"
  default     = 1
}

variable "instance_type_jm2_int" {
  description = "instance type"
  default     = "t3.medium"
}

variable "key_name_jm2_int" {
  description = "pem key name"
  default     = "rhel_som"
}

variable "name_jm2_int" {
  description = "name of the vpc"
  default     = "jm2_int"
}


variable "volume_size_jm2_int" {
  description = "volume size"
  default     = "10"
}

variable "env_jm2_int" {
  description = "env name"
  default     = "Prod"
}

##################################
##Sqid_Proxy1
##################################
variable "ami_sqid_proxy1" {
  description = "ami id"
  default     = "ami-03d64741867e7bb94"
}

variable "ec2_count_sqid_proxy1" {
  description = "ec2 intance count"
  default     = 1
}

variable "instance_type_sqid_proxy1" {
  description = "instance type"
  default     = "t3.medium"
}

variable "key_name_sqid_proxy1" {
  description = "pem key name"
  default     = "rhel_som"
}

variable "name_sqid_proxy1" {
  description = "name of the vpc"
  default     = "sqid_proxy1"
}


variable "volume_size_sqid_proxy1" {
  description = "volume size"
  default     = "10"
}

variable "env_sqid_proxy1" {
  description = "env name"
  default     = "svp_cst"
}


##################################
##Sqid_Proxy2
##################################
variable "ami_sqid_proxy2" {
  description = "ami id"
  default     = "ami-03d64741867e7bb94"
}

variable "ec2_count_sqid_proxy2" {
  description = "ec2 intance count"
  default     = 1
}

variable "instance_type_sqid_proxy2" {
  description = "instance type"
  default     = "t3.medium"
}

variable "key_name_sqid_proxy2" {
  description = "pem key name"
  default     = "rhel_som"
}

variable "name_sqid_proxy2" {
  description = "name of the vpc"
  default     = "sqid_proxy2"
}

variable "volume_size_sqid_proxy2" {
  description = "volume size"
  default     = "10"
}

variable "env_sqid_proxy2" {
  description = "env name"
  default     = "svp_cst"
}



##################################
##etcd_int1
##################################
variable "ami_etcd_int1" {
  description = "ami id"
  default     = "ami-03d64741867e7bb94"
}

variable "ec2_count_etcd_int1" {
  description = "ec2 intance count"
  default     = 1
}

variable "instance_type_etcd_dmz1" {
  description = "instance type"
  default     = "t3.medium"
}

variable "key_name_etcd_int1" {
  description = "pem key name"
  default     = "rhel_som"
}

variable "name_etcd_int1" {
  description = "name of the vpc"
  default     = "etcd_int1"
}

variable "volume_size_etcd_int1" {
  description = "volume size"
  default     = "10"
}

variable "env_etcd_int1" {
  description = "env name"
  default     = "svp_cst"
}

##################################
##etcd_int2
##################################
variable "ami_etcd_int2" {
  description = "ami id"
  default     = "ami-03d64741867e7bb94"
}

variable "ec2_count_etcd_int2" {
  description = "ec2 intance count"
  default     = 1
}

variable "instance_type_etcd_dmz2" {
  description = "instance type"
  default     = "t3.medium"
}

variable "key_name_etcd_int2" {
  description = "pem key name"
  default     = "rhel_som"
}

variable "name_etcd_int2" {
  description = "name of the vpc"
  default     = "etcd_int2"
}

variable "volume_size_etcd_int2" {
  description = "volume size"
  default     = "10"
}

variable "env_etcd_int2" {
  description = "env name"
  default     = "svp_cst"
}

##################################
##etcd_int3
##################################
variable "ami_etcd_int3" {
  description = "ami id"
  default     = "ami-03d64741867e7bb94"
}

variable "ec2_count_etcd_int3" {
  description = "ec2 intance count"
  default     = 1
}

variable "instance_type_etcd_dmz3" {
  description = "instance type"
  default     = "t3.medium"
}

variable "key_name_etcd_int3" {
  description = "pem key name"
  default     = "rhel_som"
}

variable "name_etcd_int3" {
  description = "name of the vpc"
  default     = "etcd_int3"
}

variable "volume_size_etcd_int3" {
  description = "volume size"
  default     = "10"
}

variable "env_etcd_int3" {
  description = "env name"
  default     = "svp_cst"
}


##################################
##etcd_dmz1
##################################
variable "ami_etcd_dmz1" {
  description = "ami id"
  default     = "ami-03d64741867e7bb94"
}

variable "ec2_count_etcd_dmz1" {
  description = "ec2 intance count"
  default     = 1
}

variable "instance_type_etcd_int1" {
  description = "instance type"
  default     = "t3.medium"
}

variable "key_name_etcd_dmz1" {
  description = "pem key name"
  default     = "rhel_som"
}

variable "name_etcd_dmz1" {
  description = "name of the vpc"
  default     = "etcd_dmz1"
}

variable "volume_size_etcd_dmz1" {
  description = "volume size"
  default     = "10"
}

variable "env_etcd_dmz1" {
  description = "env name"
  default     = "svp_cst"
}

##################################
##etcd_dmz2
##################################
variable "ami_etcd_dmz2" {
  description = "ami id"
  default     = "ami-03d64741867e7bb94"
}

variable "ec2_count_etcd_dmz2" {
  description = "ec2 intance count"
  default     = 1
}

variable "instance_type_etcd_int2" {
  description = "instance type"
  default     = "t3.medium"
}

variable "key_name_etcd_dmz2" {
  description = "pem key name"
  default     = "rhel_som"
}

variable "name_etcd_dmz2" {
  description = "name of the vpc"
  default     = "etcd_dmz2"
}

variable "volume_size_etcd_dmz2" {
  description = "volume size"
  default     = "10"
}

variable "env_etcd_dmz2" {
  description = "env name"
  default     = "svp_cst"
}

##################################
##etcd_dmz3
##################################
variable "ami_etcd_dmz3" {
  description = "ami id"
  default     = "ami-03d64741867e7bb94"
}

variable "ec2_count_etcd_dmz3" {
  description = "ec2 intance count"
  default     = 1
}

variable "instance_type_etcd_int3" {
  description = "instance type"
  default     = "t3.medium"
}

variable "key_name_etcd_dmz3" {
  description = "pem key name"
  default     = "rhel_som"
}

variable "name_etcd_dmz3" {
  description = "name of the vpc"
  default     = "etcd_dmz3"
}

variable "volume_size_etcd_dmz3" {
  description = "volume size"
  default     = "10"
}

variable "env_etcd_dmz3" {
  description = "env name"
  default     = "svp_cst"
}



##################################
##worker_int1
##################################
variable "ami_worker_int1" {
  description = "ami id"
  default     = "ami-03d64741867e7bb94"
}

variable "ec2_count_worker_int1" {
  description = "ec2 intance count"
  default     = 1
}

variable "instance_type_worker_dmz1" {
  description = "instance type"
  default     = "t3.medium"
}

variable "key_name_worker_int1" {
  description = "pem key name"
  default     = "rhel_som"
}

variable "name_worker_int1" {
  description = "name of the vpc"
  default     = "worker_int1"
}

variable "volume_size_worker_int1" {
  description = "volume size"
  default     = "10"
}

variable "env_worker_int1" {
  description = "env name"
  default     = "svp_cst"
}

##################################
##worker_int2
##################################
variable "ami_worker_int2" {
  description = "ami id"
  default     = "ami-03d64741867e7bb94"
}

variable "ec2_count_worker_int2" {
  description = "ec2 intance count"
  default     = 1
}

variable "instance_type_worker_dmz2" {
  description = "instance type"
  default     = "t3.medium"
}

variable "key_name_worker_int2" {
  description = "pem key name"
  default     = "rhel_som"
}

variable "name_worker_int2" {
  description = "name of the vpc"
  default     = "worker_int2"
}

variable "volume_size_worker_int2" {
  description = "volume size"
  default     = "10"
}

variable "env_worker_int2" {
  description = "env name"
  default     = "svp_cst"
}

##################################
##worker_int3
##################################
variable "ami_worker_int3" {
  description = "ami id"
  default     = "ami-03d64741867e7bb94"
}

variable "ec2_count_worker_int3" {
  description = "ec2 intance count"
  default     = 1
}

variable "instance_type_worker_dmz3" {
  description = "instance type"
  default     = "t3.medium"
}

variable "key_name_worker_int3" {
  description = "pem key name"
  default     = "rhel_som"
}

variable "name_worker_int3" {
  description = "name of the vpc"
  default     = "worker_int3"
}

variable "volume_size_worker_int3" {
  description = "volume size"
  default     = "10"
}

variable "env_worker_int3" {
  description = "env name"
  default     = "svp_cst"
}


##################################
##worker_dmz1
##################################
variable "ami_worker_dmz1" {
  description = "ami id"
  default     = "ami-03d64741867e7bb94"
}

variable "ec2_count_worker_dmz1" {
  description = "ec2 intance count"
  default     = 1
}

variable "instance_type_worker_int1" {
  description = "instance type"
  default     = "t3.medium"
}

variable "key_name_worker_dmz1" {
  description = "pem key name"
  default     = "rhel_som"
}

variable "name_worker_dmz1" {
  description = "name of the vpc"
  default     = "worker_dmz"
}

variable "volume_size_worker_dmz1" {
  description = "volume size"
  default     = "10"
}

variable "env_worker_dmz1" {
  description = "env name"
  default     = "svp_cst"
}

##################################
##worker_dmz2
##################################
variable "ami_worker_dmz2" {
  description = "ami id"
  default     = "ami-03d64741867e7bb94"
}

variable "ec2_count_worker_dmz2" {
  description = "ec2 intance count"
  default     = 1
}

variable "instance_type_worker_int2" {
  description = "instance type"
  default     = "t3.medium"
}

variable "key_name_worker_dmz2" {
  description = "pem key name"
  default     = "rhel_som"
}

variable "name_worker_dmz2" {
  description = "name of the vpc"
  default     = "worker_dmz2"
}

variable "volume_size_worker_dmz2" {
  description = "volume size"
  default     = "10"
}

variable "env_worker_dmz2" {
  description = "env name"
  default     = "svp_cst"
}

##################################
##worker_dmz3
##################################
variable "ami_worker_dmz3" {
  description = "ami id"
  default     = "ami-03d64741867e7bb94"
}

variable "ec2_count_worker_dmz3" {
  description = "ec2 intance count"
  default     = 1
}

variable "instance_type_worker_int3" {
  description = "instance type"
  default     = "t3.medium"
}

variable "key_name_worker_dmz3" {
  description = "pem key name"
  default     = "rhel_som"
}

variable "name_worker_dmz3" {
  description = "name of the vpc"
  default     = "worker_dmz3"
}

variable "volume_size_worker_dmz3" {
  description = "volume size"
  default     = "10"
}

variable "env_worker_dmz3" {
  description = "env name"
  default     = "svp_cst"
}

##################################
##control_panel_int1
##################################
variable "ami_control_panel_int1" {
  description = "ami id"
  default     = "ami-03d64741867e7bb94"
}

variable "ec2_count_control_panel_int1" {
  description = "ec2 intance count"
  default     = 1
}

variable "instance_type_control_panel_dmz1" {
  description = "instance type"
  default     = "t3.medium"
}

variable "key_name_control_panel_int1" {
  description = "pem key name"
  default     = "rhel_som"
}

variable "name_control_panel_int1" {
  description = "name of the vpc"
  default     = "control_panel_int1"
}

variable "volume_size_control_panel_int1" {
  description = "volume size"
  default     = "10"
}

variable "env_control_panel_int1" {
  description = "env name"
  default     = "svp_cst"
}

##################################
##control_panel_int2
##################################
variable "ami_control_panel_int2" {
  description = "ami id"
  default     = "ami-03d64741867e7bb94"
}

variable "ec2_count_control_panel_int2" {
  description = "ec2 intance count"
  default     = 1
}

variable "instance_type_control_panel_dmz2" {
  description = "instance type"
  default     = "t3.medium"
}

variable "key_name_control_panel_int2" {
  description = "pem key name"
  default     = "rhel_som"
}

variable "name_control_panel_int2" {
  description = "name of the vpc"
  default     = "control_panel_int2"
}

variable "volume_size_control_panel_int2" {
  description = "volume size"
  default     = "10"
}

variable "env_control_panel_int2" {
  description = "env name"
  default     = "svp_cst"
}


##################################
##control_panel_dmz1
##################################
variable "ami_control_panel_dmz1" {
  description = "ami id"
  default     = "ami-03d64741867e7bb94"
}

variable "ec2_count_control_panel_dmz1" {
  description = "ec2 intance count"
  default     = 1
}

variable "instance_type_control_panel_int1" {
  description = "instance type"
  default     = "t3.medium"
}

variable "key_name_control_panel_dmz1" {
  description = "pem key name"
  default     = "rhel_som"
}

variable "name_control_panel_dmz1" {
  description = "name of the vpc"
  default     = "control_panel_dmz1"
}

variable "volume_size_control_panel_dmz1" {
  description = "volume size"
  default     = "10"
}

variable "env_control_panel_dmz1" {
  description = "env name"
  default     = "svp_cst"
}

##################################
##control_panel_dmz2
##################################
variable "ami_control_panel_dmz2" {
  description = "ami id"
  default     = "ami-03d64741867e7bb94"
}

variable "ec2_count_control_panel_dmz2" {
  description = "ec2 intance count"
  default     = 1
}

variable "instance_type_control_panel_int2" {
  description = "instance type"
  default     = "t3.medium"
}

variable "key_name_control_panel_dmz2" {
  description = "pem key name"
  default     = "rhel_som"
}

variable "name_control_panel_dmz2" {
  description = "name of the vpc"
  default     = "control_panel_dmz2"
}

variable "volume_size_control_panel_dmz2" {
  description = "volume size"
  default     = "10"
}

variable "env_control_panel_dmz2" {
  description = "env name"
  default     = "svp_cst"
}

