resource "aws_route_table" "public-RT-local" {
  vpc_id = aws_vpc.my-vpc-local.id
  tags = {
    Name = "Public-RT"
  }
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.my-IGW-local.id
  }
}

resource "aws_route_table" "private-RT-1-local" {
  vpc_id = aws_vpc.my-vpc-local.id
  tags = {
    Name = "Private-RT-1"
  }  
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.my-NAT-GW-1-local.id
  }
}

resource "aws_route_table" "private-RT-2-local" {
  vpc_id = aws_vpc.my-vpc-local.id
  tags = {
    Name = "Private-RT-2"
  }
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.my-NAT-GW-2-local.id
  }  
}

#Subnet Assosiation to Route Table
resource "aws_route_table_association" "public-subnet-1a-assosiation-local" {
  subnet_id = aws_subnet.public-subnet-1a-local.id
  route_table_id = aws_route_table.public-RT-local.id
}
resource "aws_route_table_association" "public-subnet-1b-assosiation-local" {
  subnet_id = aws_subnet.public-subnet-1b-local.id
  route_table_id = aws_route_table.public-RT-local.id
}
resource "aws_route_table_association" "private-subnet-1a-assosiation-local" {
  subnet_id = aws_subnet.private-subnet-1a-local.id
  route_table_id = aws_route_table.private-RT-1-local.id
}
resource "aws_route_table_association" "private-subnet-1b-assosiation-local" {
  subnet_id = aws_subnet.private-subnet-1b-local.id
  route_table_id = aws_route_table.private-RT-2-local.id
}