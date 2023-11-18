#output "vpc" {
#  value = module.vpc
#}

output "id" {
  value = data.aws_subnets
}