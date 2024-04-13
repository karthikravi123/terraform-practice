provider "aws" {
    region = "us-east-1"
  
}

provider "vault" {
    address = "http://52.200.38.96:8200"
    skip_child_token = true

    auth_login {
      path = "auth/approle/login"

      parameters = {
        role_id = "-"
        secret_id = "-"
      }
    }
     
  
}

data "vault_kv_secret_v2" "example" {
    mount = "kv"
    name = "test-secret"

}

resource "aws_instance" "myec2" {
    ami = "ami-0261755bbcb8c4a84"
    instance_type = "t2.micro"

    tags = {
      
      secret = data.vault_kv_secret_v2.example.data["username"]
    }
  
}
