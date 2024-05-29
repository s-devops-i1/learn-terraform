resource "aws_instance" "test" {
  ami           = "ami-090252cbe067a9e58"
  instance_type = "t3.micro"
  vpc_security_group_ids = [data.aws_security_group.selected.id]

    provisioner "remote-exec" {

      connection {
        type     = "ssh"
        user     = "ec2-user"
        password = "DevOps321"
        host     = self.public_ip
      }

    inline = [
      "dnf install nginx -y",
      "systemctl start nginx",
    ]
  }

}


variable "security_group_id" {}

data "aws_security_group" "selected" {
  name = "allow-all"
}

