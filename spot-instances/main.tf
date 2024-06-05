resource "aws_instance" "instance" {
  ami = "ami-090252cbe067a9e58"
  vpc_security_group_ids = ["sg-08f41a3b66746e56a"]
  instance_market_options {
    spot_options {
      market_type = "spot"
      instance_interruption_behavior  =  "stop"
      spot_instance_type              =  "persistent"
    }
  }
  instance_type = "t3.small"
  tags = {
    Name = "test-spot"
  }
}