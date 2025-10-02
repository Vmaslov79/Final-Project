# AWS account config
region = "eu-central-1"

# General for all infrastructure
name = "vlad"
cluster_identity_oidc_issuer     = "https://oidc.eks.eu-central-1.amazonaws.com/id/A092A0A4BE50D61640CC4BAE2503E000"
cluster_identity_oidc_issuer_arn = "arn:aws:iam::013372624309:oidc-provider/oidc.eks.eu-central-1.amazonaws.com/id/A092A0A4BE50D61640CC4BAE2503E000"


tags = {
  Environment = "vlad-student"
  TfControl   = "true"
}

zone_name        = "devops8.test-danit.com"
route53_zone_id  = "Z09677011LE4DBU3U1XY5"
