variable "name" {
  type        = string
  description = "Prefix for all infrastructure components"
}

variable "region" {
  type        = string
  description = "AWS region to deploy resources"
}
#variable "subnets_ids" {
#  type        = list(string)
#  description = "List of subnet IDs for EKS cluster"
#}

variable "vpc_cidr" {
  type        = string
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/16"
}


#variable "vpc_id" {
#  type        = string
#   default     = "10.0.0.0/16"
#}

variable "public_subnets" {
  type        = list(string)
  default     = ["10.0.10.0/24", "10.0.11.0/24"]

}
variable "private_subnets" {
  type    = list(string)
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "tags" {
  type        = map(string)
  description = "Common tags for all resources"
}

variable "zone_name" {
  type        = string
  description = "Route53 hosted zone name"
}

variable "route53_zone_id" {
  type        = string
  description = "Route53 hosted zone ID"
}

variable "iam_profile" {
  type        = string
  description = "AWS CLI profile name (optional)"
  default     = null
}

variable "cluster_identity_oidc_issuer" {
  description = "OIDC issuer URL для EKS-кластера (використовується для IRSA)"
  type        = string
}

variable "cluster_identity_oidc_issuer_arn" {
  description = "ARN провайдера OIDC для EKS-кластера (використовується для trust policy)"
  type        = string
}
