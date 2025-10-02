data "aws_eks_cluster" "this" {
  name = aws_eks_cluster.danit.name
}

data "aws_eks_cluster_auth" "this" {
  name = aws_eks_cluster.danit.name
}

data "aws_route53_zone" "kubeedge" {
  name         = var.zone_name
  private_zone = false
}

#data "aws_vpc" "main" {
#  filter {
#    name   = "tag:Name"
#    values = ["vlad-vpc"]
#  }
#}
data "aws_subnets" "eks" {
  filter {
    name    = "vpc-id"
    values  = [aws_vpc.main.id]

    }
}