terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

# Create a VPC
resource "aws_instance" "example" {
    ami = "ami-080e1f13689e07408"
    instance_type = "t2.micro"
    subnet_id = "subnet-03649f6c536eddea2"
    key_name = "demo58"
}

