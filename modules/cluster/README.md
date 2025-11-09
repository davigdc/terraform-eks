<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 6.19.0 |
| <a name="provider_tls"></a> [tls](#provider\_tls) | 4.1.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_eks_access_entry.cluster_access_entry](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_access_entry) | resource |
| [aws_eks_access_policy_association.cluster_access_entry_association](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_access_policy_association) | resource |
| [aws_eks_cluster.eks_cluster](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_cluster) | resource |
| [aws_iam_openid_connect_provider.eks_oidc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_openid_connect_provider) | resource |
| [aws_iam_role.eks_cluster_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.eks_cluster_role_attachment](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_security_group_rule.eks_cluster_sg_rule](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule) | resource |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [tls_certificate.eks_oidc_tls_certificate](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/data-sources/certificate) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_k8s_version"></a> [k8s\_version](#input\_k8s\_version) | K8s version to set on the cluster EKS | `string` | n/a | yes |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | Project name to be used to name the resources (Name tag) | `string` | n/a | yes |
| <a name="input_public_subnet_1a"></a> [public\_subnet\_1a](#input\_public\_subnet\_1a) | Subnet to create EKS cluster AZ 1a | `string` | n/a | yes |
| <a name="input_public_subnet_1b"></a> [public\_subnet\_1b](#input\_public\_subnet\_1b) | Subnet to create EKS cluster AZ 1b | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags to be added to AWS resources | `map(any)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cluster_certificate"></a> [cluster\_certificate](#output\_cluster\_certificate) | n/a |
| <a name="output_cluster_endpoint"></a> [cluster\_endpoint](#output\_cluster\_endpoint) | n/a |
| <a name="output_eks_cluter_name"></a> [eks\_cluter\_name](#output\_eks\_cluter\_name) | n/a |
| <a name="output_oidc"></a> [oidc](#output\_oidc) | n/a |
<!-- END_TF_DOCS -->