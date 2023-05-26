resource "aws_key_pair" "aws_terraform_kp" {
  key_name   = "aws_terraform_kp"
  public_key = tls_private_key.rsa.public_key_openssh
}

# RSA key of size 4096 bits
resource "tls_private_key" "rsa" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "local_file" "aws_terraform_kp" {
    content     = tls_private_key.rsa.private_key_pem
    filename = "aws_terraform_kp"
}