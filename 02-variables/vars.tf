variable "sample" {
  default = "Hello World"
}

output "jinnu" {
  value = var.sample
}

output "jithu" {
  value = "${var.sample}"
}