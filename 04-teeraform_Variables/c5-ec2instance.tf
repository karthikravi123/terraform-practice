#resource: ec2 instance
resource "aws_instance" "myec2" {
  ami = data.aws_ami.amzlinux2.id
  instance_type = var.instance_type
  user_data = file("${path.module}/install.sh")
  key_name = var.instance_keypair
  vpc_security_group_ids = [ 
    aws_security_group.vpc-ssh.id,aws_security_group.vpc-web.id
   ]
  tags = {
   "Name" = "ec2-demo"
  } 
 
}