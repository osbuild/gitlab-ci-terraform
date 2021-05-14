module "openstack" {
  source = "../_base"

  name     = "rhel-8.3"
  image_id = "6f56aa22-5ab8-4f8c-84e7-b300d107aed2"
}

output "ip_address" {
  value = module.openstack.ip_address
}
