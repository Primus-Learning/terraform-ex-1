resource "aws_route_table_association" "rt_pub_ass" {
  subnet_id      = aws_subnet.pub_subnet01.id
  route_table_id = aws_route_table.public_rt.id
}

resource "aws_route_table_association" "rt_pri_ass" {
  subnet_id      = aws_subnet.pri_subnet02.id
  route_table_id = aws_route_table.private_rt.id
}
