resource "aws_s3_bucket" "example" {
  bucket = var.bucket_name
  tags = var.bucket_tags
}

resource "aws_s3_bucket" "example1" {
  bucket = var.bucket_name1
  tags = var.bucket_tags1
}

resource "aws_s3_bucket" "example2" {
  bucket = var.bucket_name2
  tags = var.bucket_tags2
}