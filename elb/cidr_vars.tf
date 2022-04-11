variable "vpc_cidr" {
  description = "vpc cidr"
  default     = "10.85.0.0/16"
}

variable "jmjs_int1_cidr" {
  description = "jmjs_int1_cidr"
  default     = "10.85.1.128/26"
}

variable "jmjs_int2_cidr" {
  description = "jmjs_int2_cidr"
  default     = "10.85.1.192/26"
}

variable "sqid_proxy1_cidr" {
  description = "sqid_proxy1_cidr"
  default     = "10.85.5.192/26"
}

variable "sqid_proxy2_cidr" {
  description = "sqid_proxy1_cidr"
  default     = "10.85.6.0/26"
}