data "aws_subnets" "example" {
  filter {
    name   = "vpc-id"
    values = [var.default_vpcid]
  }
}

  //