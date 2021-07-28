//resource "aws_instance" "ec2" {
//  ami                     = "ami-074df373d6bafa625"
//  instance_type           = "t3.micro"
//}

resource "aws_spot_instance_request" "cheap_worker" {
  count                           = length(var.COMPONENT)
  ami                             = "ami-074df373d6bafa625"
  spot_price                      = "0.0031"
  instance_type                   = "t3.micro"
  wait_for_fulfillment            = true
  tags                            = {
    Name                          = element(var.COMPONENT,count.index )
  }
}
resource "aws_ec2_tag" "name-tag" {
  count                           = length(var.COMPONENT)
  resource_id                     = element(aws_spot_instance_request.cheap_worker.*.spot_instance_id,count.index)
  key                             = "Instance_Name"
  value                           = element(var.COMPONENT,count.index )
}





