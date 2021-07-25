
        /*
variable "var_1" {
  default = ["cat" , "dog" , "monkey" , "tiger" , "lion"]
}
output "out_1" {
  value = "${var.var_1}"
}
output "Group_one" {
  value = "${var.var_1[0]} , ${var.var_1[3]}"
}
       */
variable "CARS" {
  default = ["Civic" , "Corola"]
}
output "Cars" {
  value = "${var.CARS}"
}