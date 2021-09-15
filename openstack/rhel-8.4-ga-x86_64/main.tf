module "openstack" {
  source = "../_base"

  name      = "rhel-8-4-ga"
  image_id  = "fe7cab9c-aaac-4d4d-8c19-82c4fc7c5e05"
  flavor_id = "893c20cf-d5ea-4c7d-9eee-2bc4b3e5723e"
}

output "ip_address" {
  value = module.openstack.ip_address
}
