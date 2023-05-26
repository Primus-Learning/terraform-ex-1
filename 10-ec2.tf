
resource "aws_instance" "web_server01" {
  ami           = var.web_server01_ami
  instance_type = var.web_server01_instance_type
  associate_public_ip_address = true
  availability_zone = var.azs[0]
  subnet_id = aws_subnet.pub_subnet01.id
  vpc_security_group_ids= [aws_security_group.terraform-sg.id]
  key_name = "aws_terraform_kp"

  tags = {
    Name = "${var.chianeng_vpc01}-${var.web_server01}"
    Env= local.common_tags["Env"]
    Team= local.common_tags["Team"]
  }
}