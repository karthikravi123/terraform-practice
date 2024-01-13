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


#output - for loops with list
output "for output_list" {
    description = "for loop with list"
    value = [for instance in aws_instance.myec2: instance.publicdns]
  
}

#output - for loop with map
output "for output_map" {
    description = "for loop with map"
    value = {for instance in aws_instance.myec2: instance.id => instance.publicdns}
  
}

#output -for loops with map advance
output "for output_map2" {
    description = "for loop with map advance"
    value = {for c, instance in aws_aws_instance.myec2: c=> instance.public_dns}
  
}

#output legacy splat operator (legacy) - return the list
output "legacy_splat_instance_publicdns" {
    description = "legacy splat operator"
    value = aws_instance.myec2.*.public_dns
  
}


#output latest generalized splat operator - return the list
output "latest_splat_instance_publicdns" {
    description = "genearalized latest splat operator"
    value = aws_instance.myec2[*].public_dns
  
}
