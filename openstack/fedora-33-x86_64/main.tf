module "openstack" {
  source = "../_base"

  name      = "fedora-33"
  image_id  = "1be1818c-4c0d-439d-945d-e3610dddfc82"
  flavor_id = "893c20cf-d5ea-4c7d-9eee-2bc4b3e5723e"
}

output "ip_address" {
  value = module.openstack.ip_address
}
