module "ec2" {
  depends_on  = [module.sg]
  source      = "./ec2"
  SG_ID       = module.sg.SG_ID
}
module "sg" {
  source      = "./sg"
}
provider "aws" {
  region      = "us-east-1"
}
output "PRIVATE_IP" {
  value = module.ec2.PRIVATE_IP
}

output "PUBLIC_IP" {
  value = module.ec2.PUBLIC_IP
}


