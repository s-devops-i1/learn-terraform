module "frontend" {
  source = "./01-modules/app"
  instance_type = var.instance_type
  security_group_id = var.security_group_id
  Name              =  var.Name


}
# module "backend" {
#   source = "./01-modules/app"
#   instance_type = "t3.micro"
#   security_group_id = "sg-08f41a3b66746e56a"
#   Name              = "backend"
# }
# module "mysql" {
#   source = "./01-modules/app"
#   instance_type = "t3.micro"
#   security_group_id = "sg-08f41a3b66746e56a"
#   Name              = "mysql"
# }

