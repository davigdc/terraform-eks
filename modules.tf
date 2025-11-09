module "eks_network" {
  source       = "./modules/network"
  cidr_block   = var.cidr_block
  project_name = var.project_name
  tags         = var.tags
}

module "eks_cluster" {
  source           = "./modules/cluster"
  project_name     = var.project_name
  tags             = var.tags
  k8s_version      = var.k8s_version
  public_subnet_1a = module.eks_network.subnet_pub_1a
  public_subnet_1b = module.eks_network.subnet_pub_1b
}

module "managed_node_group" {
  source            = "./modules/managed-node-group"
  project_name      = var.project_name
  tags              = var.tags
  cluter_name       = module.eks_cluster.eks_cluter_name
  private_subnet_1a = module.eks_network.subnet_pub_1a
  private_subnet_1b = module.eks_network.subnet_pub_1b
}

module "eks_aws_load_balancer_controller" {
  depends_on   = [module.eks_cluster]
  source       = "./modules/aws-load-balancer-controller"
  project_name = var.project_name
  tags         = var.tags
  oidc         = module.eks_cluster.oidc
  cluter_name  = module.eks_cluster.eks_cluter_name
  vpcid        = module.eks_network.vpcid
}
