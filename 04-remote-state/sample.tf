
resource "aws_instance" "sample" {
  ami           = "ami-074df373d6bafa625"
  instance_type = "t3.micro"
  tags          = {
    Name        = "Sample"
  }
}
terraform {
  backend "s3" {
    bucket      = "terraform-j57"
    key         = "sample/terraform.tfstatefile"
    region      = "us-east-1"
  }
}