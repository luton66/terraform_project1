module "ec2-instance" {
  source                 = "terraform-aws-modules/ec2-instance/aws"
  version                = "~> 1.0"

  name                   = "ec2_windows"
  instance_count         = 1

  ami                    = "ami-0bc7f27692c766af4"
  instance_type          = "t2.micro"
  key_name               = "project1_key"
  vpc_security_group_ids = ["${aws_security_group.sg.id}"]
  subnet_id              = "${module.vpc.public_subnets[0]}"

  associate_public_ip_address = "true"

  tags = {
    Project     = "project1"
    Terraform   = "true"
    Environment = "test"
  }
}

module "linux-instance" {
  source                 = "terraform-aws-modules/ec2-instance/aws"
  version                = "~> 1.0"

  name                   = "ec2_linux"
  instance_count         = 1

  ami                    = "ami-0d8e27447ec2c8410"
  instance_type          = "t2.micro"
  key_name               = "project1_key"
  vpc_security_group_ids = ["${aws_security_group.sg.id}"]
  subnet_id              = "${module.vpc.public_subnets[0]}"

  associate_public_ip_address = "true"

  tags = {
    Project     = "project1"
    Terraform   = "true"
    Environment = "test"
  }
}