data "aws_ami" "ubuntu" {
  owners      = ["099720109477"]
  most_recent = true
  filter {
    name = "name"
    # values = ["ubuntu/images/ubuntu-*-*-amd64-server-*"]
    values = ["ubuntu/images/ubuntu-22.04-LTS-amd64-server-*"]
  }
}

data "aws_vpc" "talent_academy" {
  filter {
    name   = "tag:Name"
    values = ["main"]
  }
}

data "aws_subnet" "public_subnet_az_a" {
  filter {
    name   = "tag:Name"
    values = [var.public_subnet_az_a]
  }
  # id = var.subnet_id
}

