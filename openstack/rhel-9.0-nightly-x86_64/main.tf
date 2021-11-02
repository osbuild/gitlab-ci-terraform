module "openstack" {
  source = "../_base"

  name      = "rhel-9-0-nightly"
  image_id  = "62b49be2-e9c6-46c2-b1bb-37e646ac87ed"
  flavor_id = "893c20cf-d5ea-4c7d-9eee-2bc4b3e5723e"
}

output "ip_address" {
  value = module.openstack.ip_address
}
