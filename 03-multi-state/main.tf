terraform {
  backend "s3" {}
}
variable "env" {}
output "out" {
  value = var.env
}
