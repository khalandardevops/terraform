resource "aws_eip" "my-EIP-1-local" {
  tags = {
    Name = "my-EIP-1"
  }
  domain = "vpc"
}
resource "aws_eip" "my-EIP-2-local" {
  tags = {
    Name = "my-EIP-2"
  }
  domain = "vpc"
}
