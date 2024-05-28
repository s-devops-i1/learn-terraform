module "frontend" {
  source = "./01-modules/app"
  instance_type = var.instance_type
  security_group_id = var.security_group_id
  name              =  "frontend"


}
module "backend" {
  source = "./01-modules/app"
  instance_type = var.instance_type
  security_group_id = var.security_group_id
  name              = "backend"
}
module "mysql" {
  source = "./01-modules/app"
  instance_type = var.instance_type
  security_group_id = var.security_group_id
  name              = "mysql"
}

