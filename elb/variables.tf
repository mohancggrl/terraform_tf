variable "access_key" {
  description = "AWS ACCESS_KEY"
  default     = "access_key"
}

variable "secret_key" {
  description = "AWS SECRET_KEY"
  default     = "secret_key"
}
#=====ecom=======
variable "instance_port_sqid_proxy" {
  description = "On what port does the ELB access the instances."
  default     = "80"
}

variable "instance_protocol_sqid_proxy" {
  description = "On what protocol does the instance respond."
  default     = "TCP"
}

variable "lb_port_sqid_proxy" {
  description = "On what port do you want to access the ELB."
  default     = "80"
}

variable "lb_protocol_sqid_proxy" {
  description = "On what protocol should the load balancer respond."
  default     = "TCP"
}

variable "target_sqid_proxy" {
  description = "Target value"
  default     = "HTTP:8080/"
}


variable "enable_sqid_proxy" {
  description = "Whether or not to enable this module. This is required due to the lack of using count for modules. Set it to false to disable the creation of the ELB. Defaults to true"
  default     = true
}

#=====jm=======

variable "instance_port_jm_int" {
  description = "On what port does the ELB access the instances."
  default     = "80"
}

variable "instance_protocol_jm_int" {
  description = "On what protocol does the instance respond."
  default     = "TCP"
}

variable "lb_port_jm_int" {
  description = "On what port do you want to access the ELB."
  default     = "80"
}

variable "lb_protocol_jm_int" {
  description = "On what protocol should the load balancer respond."
  default     = "TCP"
}

variable "target_jm_int" {
  description = "Target value"
  default     = "HTTP:8080/"
}


variable "enable_jm_int" {
  description = "Whether or not to enable this module. This is required due to the lack of using count for modules. Set it to false to disable the creation of the ELB. Defaults to true"
  default     = true
}

