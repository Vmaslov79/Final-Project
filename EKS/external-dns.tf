#module "eks-external-dns" {
#  source                           = "lablabs/eks-external-dns/aws"
#  version                          = "2.1.1"
#  cluster_identity_oidc_issuer     = aws_eks_cluster.danit.identity.0.oidc.0.issuer
#  cluster_identity_oidc_issuer_arn = module.oidc-provider-data.arn
#  irsa_role_create       = false
#  irsa_policy_enabled    = false
#  irsa_assume_role_enabled = true
#  irsa_assume_role_arn     = "arn:aws:iam::013372624309:role/external-dns-irsa-external-dns"
#
#  depends_on = [aws_eks_cluster.danit]
#  }

# add depends_on, and i use "source" example  