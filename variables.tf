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

variable "region" {
  type        = string
  description = "AWS Region to create the resources"
}

variable "tags" {
  type        = map(string)
  description = "A map of tags to allocate on all AWS resources"
}
