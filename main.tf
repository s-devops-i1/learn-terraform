module "frontend" {
  source = "./01-modules/app"
  instance_type = "t3.micro"
  security_group_id = "sg-08f41a3b66746e56a"
  Name              =  "frontend"


}
module "backend" {
  source = "./01-modules/app"
  instance_type = "t3.micro"
  security_group_id = "sg-08f41a3b66746e56a"
  Name              = "backend"
}
module "mysql" {
  source = "./01-modules/app"
  instance_type = "t3.micro"
  security_group_id = "sg-08f41a3b66746e56a"
  Name              = "mysql"
}

