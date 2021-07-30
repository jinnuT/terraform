resource "local_file" "pet" {
  filename0 = "${var.filenameZ}"
  content0 = "${var.contentZ}"
}
resource "local_file" "car" {
  filename1 = "${var.filenameO}"
  content2 = "${var.contentO}"
}
resource "random_pet" "my-pet" {
  prefix      = var.prefix
  separator   = var.separator
  lenght      = var.lenght
}

