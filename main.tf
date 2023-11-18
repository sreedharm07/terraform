module "vpc" {
  source   = "git::https://github.com/sreedharm07/infra-vpc.git"
  for_each = var.vpc

  cidr          = each.value["cidr"]
  subnets       = each.value["subnets"]
  default_vpcid = var.default_vpcid
}




output "vpc" {
  value = module.vpc
}