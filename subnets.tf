# Public Subnets
resource "aws_subnet" "public_subnet" {
  vpc_id                  = aws_vpc.autobots123.id
  cidr_block              = var.public_subnet_cidr_block
  map_public_ip_on_launch = true
  availability_zone       = var.public_subnet_availability_zone
  tags                    = { Name = var.public-subnet1_tag }
}

resource "aws_subnet" "public_subnet1" {
  vpc_id                  = aws_vpc.autobots123.id
  cidr_block              =  var.public_subnet1_cidr_block
  map_public_ip_on_launch = true
  availability_zone       = var.public_subnet1_availability_zone
  tags                    = { Name = var.public_subnet1_tag }
}

# Private Subnets
resource "aws_subnet" "private_subnet" {
  vpc_id            = aws_vpc.autobots123.id
  cidr_block        = var.private_subnet_cidr_block
  availability_zone = var.private_subnet_availability_zone
  tags              = { Name = var.private-subnet }
}

resource "aws_subnet" "private_subnet1" {
  vpc_id            = aws_vpc.autobots123.id
  cidr_block        = var.private_subnet1_cidr_block
  availability_zone = var.private_subnet1_availability_zone
  tags              = { Name = var.private-subnet1 }
}