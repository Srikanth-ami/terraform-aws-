# Internet Gateway
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.autobots123.id
  tags   = { Name = "igw" }
}

# NAT Gateway
resource "aws_eip" "nat_eip" {
  domain = "vpc"
  tags   = { Name = "EIP" }

}

resource "aws_nat_gateway" "nat_gateway" {
  allocation_id = aws_eip.nat_eip.id
  subnet_id     = aws_subnet.public_subnet.id
  tags = {
    Name = "nat_gateway"
  }

}
