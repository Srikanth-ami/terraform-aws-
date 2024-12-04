 cidr_block = "10.0.0.0/16"
 vpc_tag = "Uat_vpc"

 public_subnet_cidr_block  = "10.0.0.0/24"
 public_subnet_availability_zone  = "us-east-1a"
 public-subnet1_tag  = "Uat_public_subnet"

 public_subnet1_cidr_block  = "10.0.1.0/24"
 public_subnet1_availability_zone  = "us-east-1b"
 public_subnet1_tag  = "Uat_public_subnet1"

 private_subnet_cidr_block  = "10.0.2.0/24"
 private_subnet_availability_zone  = "us-east-1a"
 private-subnet = "Uat_private_subnet1"

 private_subnet1_cidr_block = "10.0.3.0/24"
 private_subnet1_availability_zone = "us-east-1b"
 private-subnet1 = "Uat_private_subnet2"

 public_route_table_cidr_block = "0.0.0.0/0"
 private_route_table_cidr_block = "0.0.0.0/0"

 bucket_name = "my-uat-specific-region-bucket"
bucket_tags = {
  Name        = "My S3 Bucket"
  Environment = "UAT"
}


bucket_name1 = "my-uat-specific-region-bucket1"
bucket_tags1 = {
  Name        = "My S3 Bucket"
  Environment = "UAT"
}

bucket_name2 = "my-uat-specific-region-bucket2"
bucket_tags2 = {
  Name        = "My S3 Bucket"
  Environment = "uat"
}

 ami = "ami-012967cc5a8c9f891"
 instance_type = "t2.micro"
 key_name = "autobots"
 #vpc_security_group_ids = [aws_security_group.autobots123.id]
  ec2_instance_availability_zone = "us-east-1a"
 #subnet_id = aws_subnet.public_subnet.id
 iam_instance_profile = "SSM"
 instance_tag ="test-instance"
