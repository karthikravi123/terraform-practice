#import the configuration entirely to terraform 
we can use statefile 
statefile -suing it terraform understand ,what to create abd modify

#if statefile doesnot exist ,we can write main.tf file if 100 of ec2 exist then we can use terraform import

terraform plan -generate-config-out=generate_resource.tf


#now terraform will create new tf file that contains all the configuration 

now delete import in main.tf and paste the resource fromm generate_resource.tf in main.tf file and now run the command ,
now Statefile will be created

terraform import aws_instance.example instance-id
terraform plan

