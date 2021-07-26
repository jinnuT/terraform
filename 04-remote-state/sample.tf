
resource "aws_instance" "sample" {
  ami               = "ami-074df373d6bafa625"
  instance_type     = "t3.micro"
  tags              = {
    Name            = "Sample"
  }
}

provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket          = "terraform-j57"
    key             = "sample/terraform.tfstatefile"
    region          = "us-east-1"
    dynamodb_table  = "terraform"
  }
}