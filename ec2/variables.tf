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
  default     = "us-east-1"
}

variable "ami" {
  description = "ami id"
  default     = ""
}

variable "ec2_count" {
  description = "ec2 intance count"
  default     = 1
}

variable "instance_type" {
  description = "instance type"
  default     = "t3.medium"
}

variable "aws_subnet" {
  description = "Enter subnet id"
  default     = ""
}

variable "sg" {
  description = "security group id"
  default     = ""
}

variable "key_name" {
  description = "pem key name"
  default     = ""
}

variable "name" {
  description = "name of the ec2"
  default     = ""
}

variable "volume" {
  description = "volume size"
  default     = "10"
}

variable "env" {
  description = "env name"
  default     = "Prod"
}
