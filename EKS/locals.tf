locals {
  vpc_id      = aws_vpc.main.id
  subnets_ids = concat(
    aws_subnet.public[*].id,
    aws_subnet.private[*].id
  )
}
