resource "aws_nat_gateway" "my-NAT-GW-1-local" {
  tags = {
    Name = "my-NAT-GW-1"
  }
  allocation_id = aws_eip.my-EIP-1-local.id
  subnet_id = aws_subnet.public-subnet-1a-local.id
  depends_on = [ aws_internet_gateway.my-IGW-local ]
}

resource "aws_nat_gateway" "my-NAT-GW-2-local" {
  tags = {
    Name = "my-NAT-GW-2"
  }
  allocation_id = aws_eip.my-EIP-2-local.id
  subnet_id = aws_subnet.public-subnet-1b-local.id
  depends_on = [ aws_internet_gateway.my-IGW-local ]
}