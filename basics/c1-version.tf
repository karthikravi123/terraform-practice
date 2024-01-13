#terraform block
#provider requirements
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

  required_version = ">= 1.2.0"
}

#provider block
#provider configuration

provider "aws" {
  profile = "default"
  region  = "us-west-1"
}

