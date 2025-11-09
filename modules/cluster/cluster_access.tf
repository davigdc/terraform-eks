resource "aws_eks_access_entry" "cluster_access_entry" {
  cluster_name  = aws_eks_cluster.eks_cluster.name
  principal_arn = data.aws_caller_identity.current.arn
  type          = "STANDARD"

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-cluster-access-entry"
    }
  )
}

resource "aws_eks_access_policy_association" "cluster_access_entry_association" {
  cluster_name  = aws_eks_cluster.eks_cluster.name
  policy_arn    = "arn:aws:eks::aws:cluster-access-policy/AmazonEKSClusterAdminPolicy"
  principal_arn = data.aws_caller_identity.current.arn

  access_scope {
    type = "cluster"
  }
}
