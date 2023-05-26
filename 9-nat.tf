resource "aws_nat_gateway" "natgw" {
  allocation_id = aws_eip.nat_eip.id
  subnet_id     = aws_subnet.pub_subnet01.id

  tags = {
    Name = "${var.chianeng_vpc01}-natgw"
  }

  depends_on = [aws_internet_gateway.igw]
}