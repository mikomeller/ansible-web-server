variable "aws_owner_id" {
  description = "owner name of the ami for ubuntu"
  type        = string
}

variable "aws_ami_name" {
  description = "ami name"
  type        = string
}

variable "instance_type" {
  type = string
}

variable "vpc_name" {
  type = string
}

variable "public_subnet_az_a" {
  type = string
}

variable "key_pair" {
  default = "id_rsa"
}
