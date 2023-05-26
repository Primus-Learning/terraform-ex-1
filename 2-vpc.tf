#provisioning the vpc and cidr block
resource "aws_vpc" "chianeng_vpc01" {
  cidr_block       = var.chianeng_vpc01_cidr
  instance_tenancy = "default"
  enable_dns_hostnames = true
  tags = {
    Name = "${var.chianeng_vpc01}"
    Env= local.common_tags["Env"]
    Team= local.common_tags["Team"]
  }
}
















