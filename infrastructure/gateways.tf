# resource "aws_internet_gateway" "gw_internet" {
#   vpc_id = data.aws_vpc.talent_academy.id
#   tags = {
#     Name = "VPC internet public gateway"
#   }
# }

# nat_eip is fix IPv4 on public_a zone
# resource "aws_nat_gateway" "gw_nat" {
#   allocation_id = aws_eip.nat_eip.id
#   subnet_id     = aws_subnet.public_az_a.id

#   tags = {
#     Name = "VPC NAT gateway"
#   }
  # waiting for internet_gw to be created to create NAT
# depends_on = [aws_internet_gateway.gw_internet]
# }

# # nat_eip is fix IPv4 
# a static public IPv4 address associated with your AWS account in a specific Region. Unlike an auto-assigned public IP address, an Elastic IP address is preserved after you stop and start your instance in a virtual private cloud (VPC).
# resource "aws_eip" "nat_eip" {
#   vpc      = true
# }


