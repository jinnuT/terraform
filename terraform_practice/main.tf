resource "local_file" "pet" {
  filename       = var.filenameZ
  content        = var.contentZ
}
resource "local_file" "car" {
  filename       = var.filenameO
  content        = var.contentO
}
resource "random_pet" "my-pet" {
  prefix          = var.prefix
  separator       = var.separator
  length          = var.length
}

