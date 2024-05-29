terraform {
  backend "s3" {
    bucket = "b78-sbucket"
    key    = "state/sfile"
    region = "us-east-1"
  }
}
resource "null_resource" "dummy" {}
resource "null_resource" "demo" {}
