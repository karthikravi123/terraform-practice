provider "aws" {
    region = "us-east-1"
  
}

resource "aws_s3_bucket" "s3_buckett" {
    bucket = "myassigns3buucket"
  
}