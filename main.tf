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

