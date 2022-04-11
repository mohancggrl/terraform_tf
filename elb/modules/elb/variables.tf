variable "name" {
  description = "Name of the ELB and security group resources."
  default     = ""
}

variable "target" {
  description = "Target value"
  default     = ""
}

variable "security_group_ids" {
  description = "elb security group id"
  type        = list(string)
  default     = [""]
}


variable "enable" {
  description = "Whether or not to enable this module. This is required due to the lack of using count for modules. Set it to false to disable the creation of the ELB. Defaults to true"
  default     = ""
}

variable "subnet_ids" {
  description = "List of subnet ids to place the ELB into."
  type        = list(string)
  default     = [""]
}

variable "internal" {
  description = "If true, ELB will be an internal ELB."
  default     = false
}

variable "cross_zone_load_balancing" {
  description = "Enable cross-zone load balancing."
  default     = true
}

variable "idle_timeout" {
  description = "The time in seconds that the connection is allowed to be idle."
  default     = "60"
}

variable "connection_draining" {
  description = "Boolean to enable connection draining."
  default     = false
}

variable "connection_draining_timeout" {
  description = "The time in seconds to allow for connections to drain"
  default     = "300"
}

variable "instance_port" {
  description = "On what port does the ELB access the instances."
  default     = ""
}

variable "instance_protocol" {
  description = "On what protocol does the instance respond."
  default     = ""
}

variable "lb_port" {
  description = "On what port do you want to access the ELB."
  default     = ""
}

variable "lb_protocol" {
  description = "On what protocol should the load balancer respond."
  default     = ""
}

variable "healthy_threshold" {
  description = "The number of checks before the instance is declared healthy."
  default     = "10"
}

variable "unhealthy_threshold" {
  description = "The number of checks before the instance is declared unhealthy."
  default     = "2"
}

variable "timeout" {
  description = "The length of time before the check times out."
  default     = "5"
}

variable "interval" {
  description = "The interval between checks."
  default     = "30"
}

variable "instance_ids" {
  description = "instance ids"
}

