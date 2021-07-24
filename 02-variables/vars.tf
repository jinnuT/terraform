/*
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

variable "TRAINING" {
  default = "DevOps"
}

variable "TRAININGS" {
  default = [ "DevOps" , "AWS" , "Terraform" , 10000 ]
}

variable "TRAINING_DETAILS" {
  default = {
    string = "Down Town"
    numbers = 100000000
    boolean = false
  }
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

output "out1" {
  value = "${var.TRAINING}"
}

output "out2" {
  value = "${var.TRAININGS}"
}

output "out3" {
  value = "${var.TRAINING_DETAILS}"
}

output "accessing_array_variable" {
  value = "${var.TRAININGS[0]}--arr[0], ${var.TRAININGS[1]}--arr[1]"
}

variable "FRUITS" {}

output "Name_of_some_Fruits_are" {
  value = "${var.FRUITS}"
}

output "First_Fruit" {
  value = "${var.FRUITS[0]}"
}

output "Second_Fruit" {
  value = "${var.FRUITS[1]}"
}

output "Third_Fruit" {
  value = "${var.FRUITS[2]}"
}


variable "COUNTRY" {}

output "COUNTRY" {
  value = var.COUNTRY
}          */


variable "FRUITS" {}
output "FRUITS" {
  value = "${var.FRUITS}"
}

variable "CARS" {
  default = ["Honda" , "Ford" , "Toyota" , "Tata"]
}
output "CARS" {
  value = "${var.CARS}"


}