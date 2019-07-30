resource "aws_security_group" "sg" {
  name          = "sg"
  vpc_id        = "${module.vpc.vpc_id}"

  ingress {
    from_port = 3389
    to_port = 3389
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port = 3389
    to_port = 3389
    protocol = "udp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags {
    Name    = "project1"
  }
}