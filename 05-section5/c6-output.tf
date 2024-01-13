#terraform output values


#ec2 instance public ip
output "instance_public_ip" {
    description = "ec2 instance public ip"
    value = aws_instance.myec2.public_ip
  
}

#ec2 instance public dns
output "instance_public_dns" {
    description = "ec2 instance public dns"
    value = aws_instance.myec2.public_dns
  
}
