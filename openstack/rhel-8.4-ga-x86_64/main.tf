module "openstack" {
  source = "../_base"

  name     = "rhel-8-4-ga"
  image_id = "fe7cab9c-aaac-4d4d-8c19-82c4fc7c5e05"
}

output "ip_address" {
  value = module.openstack.ip_address
}
