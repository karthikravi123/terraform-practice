#resource: ec2 instance
resource "aws_instance" "myec2" {
  ami = "ami-0c7217cdde317cfec"
  instance_type = "t2.micro"
  user_data = file("${path.module}/install.sh")
  tags = {
   "Name" = "ec2-demo"
  } 
 
}