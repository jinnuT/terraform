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

resource "aws_route53_record" "records" {
  count                           = local.LENGTH
  zone_id                         = "Z0821647W15DL3WPSKX8"
  name                            = element(var.COMPONENTS,count.index)
  type                            = "A"
  ttl                             = "300"
  records                         = [element(aws_spot_instance_request.cheap_worker.*.private_ip, count.index)]
}

resource "null_resource" "run-shell-scripting" {
  depends_on                      = [aws_route53_record.records]
  count                           = local.LENGTH
  provisioner "remote-exec"       {
    connection {
      host                        = element(aws_spot_instance_request.cheap_worker.*.public_ip, count.index)
      user                        = "centos"
      password                    = "DevOps321"
    }
    inline = [
      "cd /home/centos",
      "git clone https://github.com/jinnuT/shell_scripting.git",
      "cd shell_scripting/roboshop",
      "sudo make ${element(var.COMPONENTS,count.index)}"
    ]
  }
}
locals {
  LENGTH                          = length(var.COMPONENTS)
}



