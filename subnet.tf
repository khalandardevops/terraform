resource "aws_subnet" "public-subnet-1a-local" {
  vpc_id = aws_vpc.my-vpc-local.id
  tags = {
    Name = "Public-subnet-1a"
  }
  cidr_block = "192.168.0.0/26"
  availability_zone = "ap-south-1a"
  map_public_ip_on_launch = true
}
resource "aws_subnet" "public-subnet-1b-local" {
  tags = {
    Name = "Public-subnet-1b"
  }
  cidr_block = "192.168.0.64/26"
  availability_zone = "ap-south-1b"
  vpc_id = aws_vpc.my-vpc-local.id
  map_public_ip_on_launch = true
}
resource "aws_subnet" "private-subnet-1a-local" {
  tags = {
    Name = "Private-subnet-1a"
  }
  cidr_block = "192.168.0.128/26"
  availability_zone = "ap-south-1a"
  vpc_id = aws_vpc.my-vpc-local.id
}
resource "aws_subnet" "private-subnet-1b-local" {
  tags = {
    Name = "Private-subnet-1b"
  }
  cidr_block = "192.168.0.192/26"
  availability_zone = "ap-south-1b"
  vpc_id = aws_vpc.my-vpc-local.id
}