variable "sample" {
  default = "Hello World"
}

variable "sample2" {}

output "jinnu" {
  value = var.sample
}

output "jithu" {
  value = "${var.sample}"
}

output "santa" {
  value = "${var.sample}-from Terraform"
}

output "jinnu1" {
  value = "${var.sample2}"
}


variable "variable1" {
  default = "Welcome to the Jungle"
}
variable "variable2" {
  default = 1000
}
variable "variable3" {
  default = true
}

output "output1" {
  value = "${var.variable1}"
}
output "output2" {
  value = "${var.variable2}"
}
output "output3" {
  value = "${var.variable3}"
}
output "output4" {
  value = "string = ${var.variable1}, integer = ${var.variable2}, boolean = ${var.variable3}"
}
