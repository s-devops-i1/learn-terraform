resource "aws_instance" "instance" {
  ami = "ami-090252cbe067a9e58"
  vpc_security_group_ids = ["sg-08f41a3b66746e56a"]
  instance_type = "t3.small"
  tags = {
    Name = "test-spot"
  }
  instance_market_options {
    market_type = "spot"
    spot_options {

      instance_interruption_behavior  =  "stop"
      spot_instance_type              =  "persistent"
    }


  }


}