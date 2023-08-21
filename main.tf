module "vpc" {
  source = "git::https://github.com/Tirupathi1729/tf-module-basic-vpc.git"

  for_each = var.vpc
  cidr = each.value["cidr"]
  subnets = each.value["subnets"]
  default_vpc_id = var.default_vpc_id
  default_vpc_cider = var.default_vpc_cider
  default_vpc_route_table_id = var.default_vpc_route_table_id
}
output "vpc" {
  value = module.vpc
}