module "vpc" {
  source       = "./module/VPC"
  cluster_name = var.cluster_name
  env          = var.env
  type         = var.type
}

