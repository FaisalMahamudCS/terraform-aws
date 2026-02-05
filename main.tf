#######################
# Example AWS resources
#######################

resource "aws_instance" "web" {
  ami           = "test"
  instance_type = "t3.small"
}

output "instance_detail" {
  value = aws_instance.web.id
}
# Specify provider
provider "aws" {
  region = "us-east-1"  # Change to your preferred region
}

# Create an S3 bucket
resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-unique-bucket-name-12345"  # Must be globally unique
  acl    = "private"

  tags = {
    Name        = "MyFirstS3Bucket"
    Environment = "Dev"
  }
}