variable "cidr_block" {}
variable "vpc_tag" {}

variable "public_subnet_cidr_block" {}
variable "public_subnet_availability_zone" {}
variable "public-subnet1_tag" {}

variable "public_subnet1_cidr_block" {}
variable "public_subnet1_availability_zone" {}
variable "public_subnet1_tag" {}

variable "private_subnet_cidr_block" {}
variable "private_subnet_availability_zone" {}
variable "private-subnet" {}

variable "private_subnet1_cidr_block" {}
variable "private_subnet1_availability_zone" {}
variable "private-subnet1" {}

variable "public_route_table_cidr_block" {}
variable "private_route_table_cidr_block" {}

# Variable for S3 bucket name
variable "bucket_name" {}
# Variable for tags
variable "bucket_tags" {}
# Variable for S3 bucket name
variable "bucket_name1" {}
# Variable for tags1
variable "bucket_tags1" {}
# Variable for S3 bucket name
variable "bucket_name2" {}
# Variable for tags2
variable "bucket_tags2" {}
variable "ami" {}
variable "instance_type" {}
variable "key_name" {}
#variable "vpc_security_group_ids" {}
variable "ec2_instance_availability_zone" {}
#variable "subnet_id" {}
variable "iam_instance_profile" {}
variable "instance_tag" {}
