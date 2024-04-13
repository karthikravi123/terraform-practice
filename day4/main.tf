provider "aws" {
    region = "us-east-1"
  
}


resource "aws_instance" "example" {
    ami = "ami-080e1f13689e07408"
    instance_type = "t2.micro"
    subnet_id = "subnet-03649f6c536eddea2"
    key_name = "demo58"
  
}


resource "aws_s3_bucket" "s3_buckett" {
    bucket = "myassigns3buucket"
  
}

/*
resource "aws_dynamodb_table" "terraform_lock" {
    name = "terraform-lock"
    billing_mode = "PAY_PER_REQUEST"
    hash_key = "LockID"

    attribute {
      name = "LockID"
      type = "S"
    }
  
}
*/