# Define Elastic IP for the NAT Gateway
# resource "aws_eip" "nat_eip" {
#  vpc = true
#  instance = aws_nat_gateway.example_nat_gateway.id
# }

# Create NAT Gateway
resource "aws_nat_gateway" "example_nat_gateway" {
  subnet_id = aws_subnet.subnet-p.id  # Specify the ID of your public subnet
  allocation_id = aws_eip.nat_eip.id
}

# Create Elastic IP
resource "aws_eip" "nat_eip" {
  
}

# Associate Elastic IP with NAT Gateway
# resource "aws_nat_gateway" "eip_association" {
#  allocation_id = aws_eip.nat_eip.id
#  subnet_id = aws_subnet.subnet-p.id
# }


# resource "aws_eip" "nat_eip" {
#  network_interface = aws_nat_gateway.example_nat_gateway.network_interface_ids[0] # Assuming there is only one network interface associated with the NAT Gateway
# }

# Create NAT Gateway
# resource "aws_nat_gateway" "example_nat_gateway" {
#  allocation_id = aws_eip.nat_eip.id
#  subnet_id     = aws_subnet.subnet-p.id # Specify the public subnet in the desired availability zone
# }