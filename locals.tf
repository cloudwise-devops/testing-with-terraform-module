locals {
  name_substrate = "${var.name}-${random_string.string.result}"
}