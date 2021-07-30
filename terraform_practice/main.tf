resource "local_file" "pet" {
  filename0 = "${var.filename0}"
  content0 = "${var.content0}"
}
resource "local_file" "car" {
  filename1 = "${var.filename1}"
  content2 = "${var.content1}"
}
resource "random_pet" "my-pet" {
  prefix      = var.prefix
  separator   = var.separator
  lenght      = var.lenght
}
