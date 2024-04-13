terraform {
  backend "s3" {
    bucket = "myassigns3buuckete"
    region = "us-east-1"
    key = "demoterraform/terraform.tfstate"
    #dynamodb_table = "terraform_lock"
  }
}