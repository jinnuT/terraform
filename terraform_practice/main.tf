resource "local_file" "pet" {
  filename = "pets.txt"
  content = "We love pets!"
}
resource "local_file" "car" {
  filename = "cars.txt"
  content = "We love all kinds of cars!!"
}