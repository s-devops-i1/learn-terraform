module "test-1" {
  source = "./01-modules/app"
  instance_type = var.instance_type
  security_group_id = var.security_group_id
}

