# Configure the AWS provider
provider "aws" {
  region = "us-east-1"
}

# Create an S3 bucket
resource "aws_s3_bucket" "sample" {
  bucket = "sample-bucket-unique-name"   # Replace with a globally unique name
  acl    = "private"                     # Access control
}
