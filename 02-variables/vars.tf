variable "sample" {
  default = "Hello World"
}

output "jinnu" {
  value = var.sample
}

output "jithu" {
  value = "${var.sample}"
}

output "santa" {
  value = "${var.sample}-from Terraform"
}