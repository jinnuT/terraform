data "aws_ami" "example" {
  //executable_users = ["self"]
  most_recent      = true
  //name_regex       = "^myami-\\d{3}"
  owners           = ["973714476881"]
  
}

output "myAMI_id" {
  value = data.aws_ami.example.id
}