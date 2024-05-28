resource "aws_instance" "instance" {
  ami                    = "ami-090252cbe067a9e58"
  instance_type          = var.instance_type
  vpc_security_group_ids = [data.aws_security_group.selected.id]
}


