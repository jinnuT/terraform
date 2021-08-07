module "SG" {
  source = "./SG"
}

module "EC2" {
  depends_on = [module.SG]
  source = "./EC2"
  SG_ID = module.SG.SG_ID
}


provider "aws" {
  region = "us-east-1"
}
