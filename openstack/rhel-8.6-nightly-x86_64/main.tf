module "openstack" {
  source = "../_base"

  name      = "rhel-8-6-devel"
  image_id  = "40cd4980-64b2-47c8-9a9b-3287f0439ea9"
  flavor_id = "893c20cf-d5ea-4c7d-9eee-2bc4b3e5723e"
}

output "ip_address" {
  value = module.openstack.ip_address
}
