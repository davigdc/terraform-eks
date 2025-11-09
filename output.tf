output "eks_cluter_name" {
  value       = module.eks_cluster.eks_cluter_name
  description = "EKS Cluster Name"
}

output "cluster_endpoint" {
  value       = module.eks_cluster.cluster_endpoint
  description = "EKS Endpoint"
}
