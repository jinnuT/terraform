module "ec2" {
  depends_on  = [module.sg]
  source      = "./ec2"
  SG_ID       = module.sg.SG_ID
  TYPE        = "t3.small"
}
module "sg" {
  source      = "./sg"
}
provider "aws" {
  region      = "us-east-1"
}

/* Output declaration only for PRINTING */
output "PRIVATE_IP" {
  value = module.ec2.PRIVATE_IP
}



z