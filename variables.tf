#variable "env" {
#  description = "Environment (e.g., dev, prod)"
#  type        = string
#}
#
#variable "type" {
#  description = "Type of environment or resource (e.g., web, db)"
#  type        = string
#}
#
#variable "cluster_name" {
#  description = "The name of the cluster"
#  type        = string
#}
#
# Stack Name
variable "cluster_name" {
  type = string
  default = "eks-cluster"
}

# Worker Node instance size
variable "instance_size" {
  type = string
  default = "t2.large"
}

# Region
variable "region" {
  type = string
  default = "ap-south-1"

}

# SSH Access
variable "ssh_access" {
  type = list(string)
  default = [ "0.0.0.0/0" ]
}

# UI Access
variable "http_access" {
  type = list(string)
  default = [ "0.0.0.0/0" ]
}

# Environment
variable "env" {
  type    = string
  default = "Prod"
}

# Type
variable "type" {
  type    = string
  default = "Production"
}

# Key
variable "key_name" {
  default = "terra"
}

# Instance count
variable "instance_count" {
  type = string
}
