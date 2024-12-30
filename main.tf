module "vpc" {
  source       = "./module/vpc"
  #cluster_name = var.cluster_name
  #env          = var.env
  #type         = var.type
}
# Creating IAM resources
module "iam" {
  source = "./module/IAM"
}
module "key-pair" {
  source = "./module/key-pair"
  key_name = var.key_name
}
module "security-group" {
  source = "./module/security-group"
  vpc_id       = module.vpc.vpc_id
  cluster_name = var.cluster_name
  ssh_access   = var.ssh_access
  http_access  = var.http_access
  env          = var.env
  type         = var.type

}
module "eks" {
  source = "./module/eks"
  master_arn            = module.iam.master_arn
  worker_arn            = module.iam.worker_arn
  public_subnet_az1_id  = module.vpc.public_subnet_az1_id
  public_subnet_az2_id  = module.vpc.public_subnet_az2_id
  env                   = var.env
  type                  = var.type
  key_name              = var.key_name
  eks_security_group_id = module.security-group.eks_security_group_id
  instance_size         = var.instance_size
  cluster_name          = var.cluster_name
  worker_node_count                 = var.instance_count
}
