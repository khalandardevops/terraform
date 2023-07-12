resource "aws_internet_gateway" "my-IGW-local" {
  vpc_id = aws_vpc.my-vpc-local.id
  tags = {
    Name = "my-IGW-Connection"
  }
}