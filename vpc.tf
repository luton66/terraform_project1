module "vpc" {
  source          = "terraform-aws-modules/vpc/aws"
  version         = "1.66"

  name            = "project_1"
  cidr            = "10.0.0.0/16"

  azs             = ["eu-west-2a"]
  public_subnets  = ["10.0.101.0/24"]

  enable_dns_hostnames = "true"

  tags = {
    Project   = "project1"
    Terraform = "true"
    Environment = "true"
  }
}