
resource "aws_spot_instance_request" "cheap_worker" {
  count                           = length(var.COMPONENT)
  ami                             = "ami-074df373d6bafa625"
  spot_price                      = "0.0031"
  instance_type                   = "t3.micro"
  vpc_security_group_ids          = ["sg-04a7ddc2077ef1099"]
  wait_for_fulfillment            = true
  tags                            = {
    Name                          = element(var.COMPONENT,count.index )
  }
}
resource "aws_ec2_tag" "name-tag" {
  count                           = length(var.COMPONENT)
  resource_id                     = element(aws_spot_instance_request.cheap_worker.*.spot_instance_id,count.index)
  key                             = "Name"
  value                           = element(var.COMPONENT,count.index )
}

resource "null_resource" "run-shell-script" {
  count                           = length(var.COMPONENT)
  provisioner "remote-exec" {
    connection {
      user                        = "centos"
      password                    = "DevOps321"
      host                        = element(aws_spot_instance_request.cheap_worker.*.public_ip,count.index )
    }

    inline = [
      "cd /home/centos",
      "git clone https://github.com/raghudevops57/shell-scripting.git",
      "cd shell_scripting/roboshop",
      "sudo make ${element(var.COMPONENT, count.index)}"

    ]
  }
}






