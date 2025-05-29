# Sample Terraform configuration
provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "sample" {
  bucket = "sample-bucket-unique-name"
  acl    = "private"
}
