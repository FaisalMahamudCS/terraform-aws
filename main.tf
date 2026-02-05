#######################
 AWS resources
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
  region = "us-east-1"  
}

# Create an S3 bucket
resource "aws_s3_bucket" "my_bucket" {
  bucket = "s3-sgp-bucket"  
  acl    = "private"

  tags = {
    Name        = "MyFirstS3Bucket"
    Environment = "Dev"
  }
}
