variable "cidr_block" {
  type        = string
  description = "Networking CIDR block to be used for the VPC"
}

variable "project_name" {
  type        = string
  description = "Project name to be used to name the resources (Name tag)"
}

variable "k8s_version" {
  type        = string
  description = "K8s version to set on the cluster EKS"
}

variable "user_arn_cluster_access_entry" {
  type        = string
  description = "ARN value of a user to have admin access to the EKS cluster API."
}
