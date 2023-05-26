resource "aws_route_table" "private_rt" {
  vpc_id = aws_vpc.chianeng_vpc01.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.natgw.id
  }

  tags = {
    Name = "${var.chianeng_vpc01}-private-rt"
  }
}
