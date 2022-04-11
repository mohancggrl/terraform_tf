variable "access_key" {
  description = "AWS ACCESS_KEY"
  default     = "access_key"
}

variable "secret_key" {
  description = "AWS SECRET_KEY"
  default     = "secret_key"
}

variable "availability_zones_public" {
  type        = list(any)
  description = "List of availability zones"
  default     = ["us-east-2a"]
}

variable "public_subnet_cidr_blocks" {
  type        = list(any)
  description = "List of public subnet CIDR blocks"
  default     = ["10.85.0.0/26"]
}

variable "availability_zones_dmz" {
  type        = list(any)
  description = "List of availability zones"
  default     = ["us-east-2a", "us-east-2b", "us-east-2c", "us-east-2a", "us-east-2b", "us-east-2c", "us-east-2a", "us-east-2b"]
}

variable "dmz_subnet_cidr_blocks" {
  type        = list(any)
  description = "List of private subnet CIDR blocks"
  default     = ["10.85.0.64/26", "10.85.0.192/26", "10.85.1.0/26", "10.85.5.192/26", "10.85.6.0/26", "10.85.7.0/26", "10.85.7.64/26", "10.85.7.128/26"]
}

variable "availability_zones_int" {
  type        = list(any)
  description = "List of availability zones"
  default     = ["us-east-2a", "us-east-2b", "us-east-2c", "us-east-2a", "us-east-2b", "us-east-2c", "us-east-2a", "us-east-2b", "us-east-2c", "us-east-2a", "us-east-2b", "us-east-2c", "us-east-2a", "us-east-2b", "us-east-2c", "us-east-2a", "us-east-2b"]
}

variable "int_subnet_cidr_blocks" {
  type        = list(any)
  description = "List of private subnet CIDR blocks"
  default     = ["10.85.1.128/26", "10.85.1.192/26", "10.85.2.128/26", "10.85.2.192/26", "10.85.3.64/26", "10.85.3.128/26", "10.85.3.192/26", "10.85.4.0/26", "10.85.4.64/26", "10.85.4.128/26", "10.85.4.192/26", "10.85.5.0/26", "10.85.5.64/26", "10.85.5.128/26", "10.85.6.64/26", "10.85.6.128/26", "10.85.6.192/26"]
}

variable "cidr_block" {
  description = "CIDR for the whole VPC"
  type        = string
  default     = "10.85.0.0/16"
}

variable "name" {
  type        = string
  description = "Name of the VPC"
  default     = "svp_ohio"
}

variable "environment" {
  type        = string
  description = "Name of Environment this VPC is meant to house"
  default     = "devops_cst"
}


#variable "tags" {
#  type        = map(string)
#  description = "tags"
#  default = {
#    Name = "london_ct_dcdp_jft"
#  }
#}

