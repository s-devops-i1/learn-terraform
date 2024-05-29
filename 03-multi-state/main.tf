terraform {
  backend "s3" {
    bucket = "b78-sbucket"
    key    = "test1/${env}/sfile"
    region = "us-east-1"
  }
}
variable "env" {}
output "out" {
  value = var.env
}
