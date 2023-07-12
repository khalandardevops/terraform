resource "aws_vpc" "my-vpc-local" {
 tags = {
    Name = "MY-VPC"
 } 
 cidr_block = "192.168.0.0/24"
 instance_tenancy = "default"
 
 enable_dns_hostnames = true
 enable_dns_support = true
}