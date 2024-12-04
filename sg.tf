# Security Group
resource "aws_security_group" "autobots123" {
  name        = "autobots123"
  description = "autobots123 security group"
  vpc_id      = aws_vpc.autobots123.id

  ingress {
    description = "Allow SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Allow all"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "autobots123"
  }
  depends_on = [aws_vpc.autobots123]
}

