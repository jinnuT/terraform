resource "random_pet" "my_pet" {
  length = "1"
  prefix = "Mr"
  separator = "."
}
resource "local_file" "myPet" {
  filename = "myPet.txt"
  content = "Random name of my pet is ${random_pet.my_pet.id}"
}

output "pet_name" {
  value = random_pet.my_pet.id

}