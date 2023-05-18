provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0aa2b7722dc1b5612"
  instance_type = "t2.micro"
  
  tags = {
    Name = "terraform-instance"
  }
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "thisismybucketcreatedterraf"  # Update with your desired bucket name
  acl    = "private"                      # Access control for the bucket (optional)
}
