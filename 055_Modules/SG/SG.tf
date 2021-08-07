resource "aws_security_group" "SG" {
  name                = "allow_ssh"
  description         = "allow_ssh"

  ingress {
    description       = "SSH"
    from_port         = 22
    to_port           = 22
    protocol          = "tcp"
    cidr_blocks       = ["0.0.0.0/0"]
  }

  egress {
    from_port         = 0
    to_port           = 65535
    protocol          = "tcp"
    cidr_blocks       = ["0.0.0.0/0"]
    ipv6_cidr_blocks  = ["::/0"]
  }

  tags = {
    Name              = "SG_ssh"
  }
}

output "SG_ID" {
  value = aws_security_group.SG.id
}