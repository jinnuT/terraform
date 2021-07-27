resource "aws_spot_instance_request" "cheap_worker" {
  count                           = local.LENGTH
  ami                             = "ami-074df373d6bafa625"
  spot_price                      = "0.0031"
  instance_type                   = "t3.micro"
  vpc_security_group_ids          = ["sg-0a3395ef37041658b"]
  wait_for_fulfillment            = true
  
  tags                            = {
    Name                          = element(var.COMPONENTS, count.index)
  }
}

resource "aws_ec2_tag" "name-tag" {
  count                           = local.LENGTH
  resource_id                     = element(aws_spot_instance_request.cheap_worker.*.spot_instance_id,count.index)
  key                             = "Name"
  value                           = element(var.COMPONENTS,count.index)
}

resource "null_resource" "run-shell-scripting" {
  count                           = local.LENGTH
  provisioner "remote-exec"       {
    connection {
      host                        = element(aws_spot_instance_request.cheap_worker.*.public_ip, count.index)
      user                        = "centos"
      password                    = "DevOps321"
    }
    inline = [
      "cd /home/centos",
      "git clone https://DevOps-Batches@dev.azure.com/DevOps-Batches/DevOps57/_git/shell-scripting",
      "cd shell-scripting/roboshop",
      "sudo make ${element(var.COMPONENTS,count.index)}"
    ]
  }
}

locals {
  LENGTH                          = length(var.COMPONENTS)
}

