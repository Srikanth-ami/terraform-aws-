# Public Route Table
resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.autobots123.id
  route {
    cidr_block = var.public_route_table_cidr_block
    gateway_id = aws_internet_gateway.igw.id
  }
  tags = {
    Name = "public_route_table"
  }

}

resource "aws_route_table_association" "public_assocition" {
  subnet_id      = aws_subnet.public_subnet.id
  route_table_id = aws_route_table.public_route_table.id

}

resource "aws_route_table_association" "public_assocition1" {
  subnet_id      = aws_subnet.public_subnet1.id
  route_table_id = aws_route_table.public_route_table.id

}

# Private Route Table
resource "aws_route_table" "private_route_table" {
  vpc_id = aws_vpc.autobots123.id
  route {
    cidr_block = var.private_route_table_cidr_block
    gateway_id = aws_nat_gateway.nat_gateway.id
  }
  tags = {
    Name = "private_route_table"
  }

}

resource "aws_route_table_association" "private_assocition" {
  subnet_id      = aws_subnet.private_subnet.id
  route_table_id = aws_route_table.private_route_table.id
}

resource "aws_route_table_association" "private_assocition1" {
  subnet_id      = aws_subnet.private_subnet1.id
  route_table_id = aws_route_table.private_route_table.id
}
