output instance_public_ip {
  value       = aws_instance.web_server01
  description = "instance public ip"
}

output instance_public_dns {
  value       = aws_instance.web_server01
  description = "instance public ip"
}

output tls_private_key {
  value       = tls_private_key.rsa
  description = "sg private key"
  sensitive = true
}