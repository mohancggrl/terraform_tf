variable "vpc_cidr" {
  description = "vpc cidr"
  default     = "10.85.0.0/16"
}

variable "jump_svp_cidr" {
  description = "jump svp cidr"
  default     = "10.85.0.0/26"
}

variable "jmjs_int1_cidr" {
  description = "jmjs_int1_cidr"
  default     = "10.85.1.128/26"
}

variable "jmjs_int2_cidr" {
  description = "jmjs_int2_cidr"
  default     = "10.85.1.192/26"
}

variable "js_dmz_cidr" {
  description = "js_dmz_cidr"
  default     = "10.85.0.64/26"
}



variable "sqid_proxy1_cidr" {
  description = "sqid_proxy1_cidr"
  default     = "10.85.5.192/26"
}

variable "sqid_proxy2_cidr" {
  description = "sqid_proxy1_cidr"
  default     = "10.85.6.0/26"
}

variable "rancher_dmz1_cidr" {
  description = "rancher_dmz1_cidr"
  default     = "10.85.7.0/26"
}

variable "rancher_dmz2_cidr" {
  description = "rancher_dmz2_cidr"
  default     = "10.85.7.64/26"
}

variable "rancher_dmz3_cidr" {
  description = "rancher_dmz3_cidr"
  default     = "10.85.7.128/26"
}

variable "rancher_int1_cidr" {
  description = "rancher_int1_cidr"
  default     = "10.85.6.64/26"
}

variable "rancher_int2_cidr" {
  description = "rancher_int2_cidr"
  default     = "10.85.6.128/26"
}

variable "rancher_int3_cidr" {
  description = "rancher_int3_cidr"
  default     = "10.85.6.192/26"
}
