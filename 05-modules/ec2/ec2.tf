resource "aws_instance" "sample" {
  count                  = 2
  ami                    = "ami-074df373d6bafa625"
  instance_type          = var.TYPE
  vpc_security_group_ids = [var.SG_ID]
  tags                   = {
    Name                 = "Ex-${count.index}"
  }
}
variable "SG_ID" {}
variable "TYPE" {}



/* Output declaration here is only for sending data to MAIN */
output "PRIVATE_IP" {
  value = aws_instance.sample.*.private_ip
}

