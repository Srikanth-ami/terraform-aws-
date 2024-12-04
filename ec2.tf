# EC2 Instance
resource "aws_instance" "ec2_instance" {
  ami                         = var.ami
  count                       = "1"
  instance_type               = var.instance_type
  key_name                    = var.key_name
  vpc_security_group_ids      = [aws_security_group.autobots123.id]
  availability_zone           = var.ec2_instance_availability_zone
  subnet_id                   = aws_subnet.public_subnet.id
  associate_public_ip_address = true
  iam_instance_profile        = var.iam_instance_profile

  tags = {
    Name = var.instance_tag
  }

  root_block_device {
    volume_type           = "gp2"
    volume_size           = 30
    delete_on_termination = true
  }
}