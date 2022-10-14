resource "aws_instance" "web_server" {
  count = 3
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.web_server.id]
  key_name               = var.key_pair
  subnet_id              = data.aws_subnet.public_subnet_az_a.id
  associate_public_ip_address = true

  tags = {
    Name = "web-server-${count.index+1}"
  }
}

resource "aws_security_group" "web_server" {
  name        = "ansible-web-server"
  description = "Allow access to this server"
  vpc_id      = data.aws_vpc.talent_academy.id

  # INBOUND CONNECTIONS
  ingress {
    description = "Allow SSH into the EC2"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Allow port 80"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # OUTBOUT CONNECTIONS
  egress {
    description = "Allow access to the world"
    from_port   = 0
    to_port     = 0
    protocol    = "-1" # TCP + UDP
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    "Name" = "ansible-web-server"
  }

}