data "aws_ami" "ubuntu" {
  owners      = ["099720109477"]
  most_recent = true
  filter {
    name = "name"
    # values = ["ubuntu/images/ubuntu-*-*-amd64-server-*"]
    values = [var.aws_ami_name]
  }
}

data "aws_vpc" "talent_academy" {
  filter {
    name   = "tag:Project"
    values = ["Talent-Academy"]
  }
}

data "aws_subnet" "public_subnet_az_a" {
  filter {
    name   = "tag:Name"
    values = [var.public_subnet_az_a]
  }
}

