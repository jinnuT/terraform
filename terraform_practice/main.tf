resource "local_file" "pet" {
  filenameZ       = var.filenameZ
  contentZ        = var.contentZ
}
resource "local_file" "car" {
  filenameO       = var.filenameO
  contentO        = var.contentO
}
resource "random_pet" "my-pet" {
  prefix          = var.prefix
  separator       = var.separator
  lenght          = var.length
}

