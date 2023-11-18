default_vpcid = "vpc-04136af6db41c2bfa"
default_cidr_block = "172.0.0.0/16"
default_route_table_id = "rtb-0c35d77f34ec08b32"

env = "dev"

tags = {
  company_name = "abc"
  created_by = "terraform"
}

vpc= {
  main= {
    cidr    = "77.0.0.0/16"
    subnets= {
      public= {
        public1= { cidr= "77.0.0.0/24", az= "us-east-1a" }
        public2= { cidr= "77.0.1.0/24", az= "us-east-1b"}
      }
      app= {
        app1= { cidr= "77.0.2.0/24", az= "us-east-1a" }
        app2= { cidr= "77.0.3.0/24", az= "us-east-1b" }
      }
      db= {
        db1= { cidr= "77.0.4.0/24", az= "us-east-1a" }
        db2= { cidr= "77.0.5.0/24", az= "us-east-1b" }
      }
    }
  }
}


alb = {
  public = {
    internal = "false"
    lb_type = "application"
    cidr_sg = ["77.0.0.0/16"]
  }
  private = {
    internal = "true"
    lb_type = "application"
    cidr_sg = ["172.0.0.0/16", "77.0.0.0/16"]
  }
}
