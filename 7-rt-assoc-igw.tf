#Associating pub-subnets to igw
resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.chianeng_vpc01.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "${var.chianeng_vpc01}-pub_subnet01"
  }
}
