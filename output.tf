output "vpc_id" {
  value = aws_vpc.default.id
}
output "vpc_name" {
  value = var.vpc_name
}
output "env" {
  value = var.environment
}
output "private_sub_id" {
  # value = aws_subnet.private-subnet.id
  value = [for sub in aws_subnet.private-subnet : sub.id]
}
output "public_sub_id" {
  # value = aws_subnet.public-subnet.id
  value = [for sub in aws_subnet.public-subnet : sub.id]
}
output "public_sub_id_1" {
  value = aws_subnet.public-subnet.0.id
}

# output "nat-gw-id" {
#   value = aws_nat_gateway.natgw.id
# }
