module "vpc" {
  source   = "git::https://github.com/sreedharm07/infra-vpc.git"
  for_each = var.vpc
  tags     = var.tags
  env      = var.env

  cidr                   = each.value["cidr"]
  subnets                = each.value["subnets"]
  default_vpcid          = var.default_vpcid
  default_cidr_block     = var.default_cidr_block
  default_route_table_id = var.default_route_table_id
}

#module "alb" {
#  source   = "git::https://github.com/sreedharm07/loadbalancer.git"
#  for_each = var.alb
#  tags     = var.tags
#  env      = var.env
#
#  internal = each.value["internal"]
#  lb_type  = each.value["lb_type"]
#  cidr_sg  = each.value["cidr_sg"]
#  vpc_id   = each.value["internal"] ?
#}