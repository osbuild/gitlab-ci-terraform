module "openstack" {
  source = "../_base"

  name     = "fedora-32"
  image_id = "f665818b-7b72-49ab-96f7-8efd51cd37ce"
}

output "ip_address" {
  value = module.openstack.ip_address
}
