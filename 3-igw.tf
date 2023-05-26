#provisioning of an igw and parametarizing its name as per the vpc name
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.chianeng_vpc01.id

  tags = {
    Name = "${var.chianeng_vpc01}-igw"
    Env= local.common_tags["Env"]
    Team= local.common_tags["Team"]
  }
}