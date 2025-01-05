# Environment
variable "env" {
  type = string
  description = "Environment"
}

# Type
variable "type" {
  type = string
  description = "Type"
}

# Stack name
variable "cluster_name" {
  type = string
  description = "Project Name"
}

# Public subnet AZ1
variable "public_subnet_az1_id" {
  type = string
  description = "ID of Public Subnet in AZ1"
}

# Public subnet AZ2
variable "public_subnet_az2_id" {
  type = string
  description = "ID of Public Subnet in AZ2"
}

# Security Group
variable "eks_security_group_id" {
  type = string
  description = "ID of EKS worker node's security group"
}

# Master ARN
variable "master_arn" {
  type = string
  description = "ARN of master node"
}

# Worker ARN
variable "worker_arn" {
  type = string
  description = "ARN of worker node"
}

# Key name
variable "key_name" {
  type = string
  description = "Name of SSH key"
}

# Worker Node & Kubectl instance size
variable "instance_size" {
  type = string
  description = "Worker node's instance size"
}

# node count
variable "worker_node_count" {
  type = string
  description = "Worker node's count"
}
# Variables for addon versions with hardcoded values
#variable "aws-ebs-csi-driver_version" {
#  description = "Version of the VPC CSI addon"
#  type        = string
#  default     = "v1.30.0-eksbuild.1"  # Hardcoded value
#}

variable "coredns_version" {
  description = "Version of the CoreDNS addon"
  type        = string
  default     = "v1.11.4-eksbuild.1" # Hardcoded value
}

variable "kube_proxy_version" {
  description = "Version of the Kube-Proxy addon"
  type        = string
  default     = "v1.30.7-eksbuild.2" # Hardcoded value
}
# Variables for addon versions with hardcoded values
#variable "aws-ebs-csi-driver_version" {
#  description = "Version of the VPC CSI addon"
#  type        = string
#  default     = "v1.30.0-eksbuild.1"  # Hardcoded value
#}

variable "coredns_version" {
  description = "Version of the CoreDNS addon"
  type        = string
  default     = "v1.11.4-eksbuild.1" # Hardcoded value
}

variable "kube_proxy_version" {
  description = "Version of the Kube-Proxy addon"
  type        = string
  default     = "v1.30.7-eksbuild.2" # Hardcoded value
}
