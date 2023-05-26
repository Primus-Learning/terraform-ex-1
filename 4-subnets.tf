# creation of public and private subnets

resource "aws_subnet" "pub_subnet01" {
  vpc_id     = aws_vpc.chianeng_vpc01.id
  cidr_block = var.pub_subnet01_cidr
  availability_zone = var.azs[0]
  map_public_ip_on_launch = true

  tags = {
    Name = "${var.chianeng_vpc01}-pub_subnet01"
    Env= local.common_tags["Env"]
    Team= local.common_tags["Team"]
  }
}

resource "aws_subnet" "pri_subnet02" {
  vpc_id     = aws_vpc.chianeng_vpc01.id
  cidr_block = var.pri_subnet02_cidr
  availability_zone = var.azs[1]
  tags = {
    Name = "${var.chianeng_vpc01}-pri_subnet02"
  }
}
