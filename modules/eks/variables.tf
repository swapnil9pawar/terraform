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
variable "addons" {
  type = list(object({
    name    = string
    version = string
  }))
  default = [
    {
      name    = "kube-proxy"
      version = "v1.30.7-eksbuild.2"
    },
    #{
    #  name    = "vpc-cni"
    #  version = "v1.12.6-eksbuild.2"
    #},
    {
      name    = "coredns"
      version = "v1.11.4-eksbuild.1"
    },
    {
      name    = "aws-ebs-csi-driver"
      version = "v1.30.0-eksbuild.1"
    }
  ]
}
