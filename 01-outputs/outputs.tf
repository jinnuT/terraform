

variable "var_1" {
  default = ["cat" , "dog" , "monkey" , "tiger" , "lion"]
}
output "out_1" {
  value = "${var.var_1}"
}