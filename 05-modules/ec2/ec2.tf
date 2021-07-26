resource "aws_instance" "sample" {
  ami                    = "ami-074df373d6bafa625"
  instance_type          = var.TYPE
  vpc_security_group_ids = [var.SG_ID]
  tags                   = {
    Name                 = "Ex"
  }
}
variable "SG_ID" {}
variable "TYPE" {}



/* Output declaration here is only for sending data to MAIN */
output "PRIVATE_IP" {
  value = aws_instance.sample.private_ip
}
/* Output declaration here is only for sending data to MAIN */
output "PUBLIC_IP" {
  value = aws_instance.sample.public_ip
}
