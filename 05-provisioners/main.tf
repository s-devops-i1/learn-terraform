resource "aws_instance" "test" {
  ami           = "ami-090252cbe067a9e58"
  instance_type = "t3.micro"
  vpc_security_group_ids = [data.aws_security_group.selected.id]


}
resource "null_resource" "provisioner" {
  provisioner "remote-exec" {

    connection {
      type     = "ssh"
      user     = "ec2-user"
      password = "DevOps321"
      host     = aws_instance.test.public_ip
    }

    inline = [
      "dnf install nginx -y",
      "systemctl start nginx",
    ]
  }

}


data "aws_security_group" "selected" {
  name = "allow-all"
}

