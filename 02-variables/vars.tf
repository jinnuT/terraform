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
