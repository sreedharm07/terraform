locals {
  vpc_id = lookup(lookup(module.vpc,"main",null),"vpc_id",null)
  app_subnet_ids = [for k,v in  lookup(lookup(lookup(lookup(module.vpc,"main",null),"subnets",null),"app",null),"subnets",null): v.id ]
}