resource "aws_route_table" "igw-route-table" {
  vpc_id = aws_vpc.vpc.id
}

resource "aws_route_table" "ngw-route-table" {
  vpc_id = aws_vpc.vpc.id
}

resource "aws_route" "igw-route" {
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.igw.id
  route_table_id         = aws_route_table.igw-route-table.id
}

resource "aws_route" "ngw-route" {
  route_table_id            = aws_route_table.ngw-route-table.id
  destination_cidr_block    = "0.0.0.0/0"
  nat_gateway_id            = aws_nat_gateway.example_nat_gateway.id
}

resource "aws_route_table_association" "subnet-p-route-table-association" {
  subnet_id      = aws_subnet.subnet-p.id
  route_table_id = aws_route_table.igw-route-table.id
}

resource "aws_route_table_association" "subnet-a-route-table-association" {
  subnet_id      = aws_subnet.subnet-a.id
  route_table_id = aws_route_table.ngw-route-table.id
}

resource "aws_route_table_association" "subnet-b-route-table-association" {
  subnet_id      = aws_subnet.subnet-b.id
  route_table_id = aws_route_table.ngw-route-table.id
}

resource "aws_route_table_association" "subnet-c-route-table-association" {
  subnet_id      = aws_subnet.subnet-c.id
  route_table_id = aws_route_table.ngw-route-table.id
}