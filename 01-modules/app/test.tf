resource "aws_instance" "instance" {
  ami                    = "ami-090252cbe067a9e58"
  instance_type          = var.instance_type


  tags = {
    Name = var.Name
  }
}


