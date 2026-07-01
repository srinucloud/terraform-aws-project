variable "vpc_cidr_block" {
  type    = string
  default = "192.168.0.0/16"
}

variable "public_subnet_cidr_block1" {
  type    = string
  default = "192.168.1.0/24"
}

variable "public_subnet_cidr_block2" {
  type    = string
  default = "192.168.2.0/24"
}