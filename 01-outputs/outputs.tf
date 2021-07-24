

variable "var_1" {
  default = ["cat" , "dog" , "monkey" , "tiger" , "lion"]
}
output "out_1" {
  value = "The value of var_1 = ${var.var_1}"
}