# Environment
variable "env" {
  type = string
  default = "prod"
}

# Type
variable "type" {
  type = string
  default = "infra"
}

# Stack name
variable "cluster_name" {
  type = string
  default = eks-cluster
}

# VPC CIDR
variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

# CIDR of public subet in AZ1
variable "public_subnet_az1_cidr" {
  type    = string
  default = "10.0.1.0/24"
}

# CIDR of public subet in AZ2
variable "public_subnet_az2_cidr" {
  type    = string
  default = "10.0.2.0/24"
}
 # CIDR of private subnet in AZ1
 variable "private_subnet_az1_cidrr" {
 type = string
 default = "10.0.3.0/24"
}

 # CIDR of private subnet in AZ2
 variable "private_subnet_az2_cidrr" {
 type = string
 default = "10.0.4.0/24"
}

