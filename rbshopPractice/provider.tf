provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket          = "terraform-j57"
    key             = "rbshopPractice/terraform.tfstate"
    region          = "us-east-1"
    dynamodb_table  = "terraform"
  }
}