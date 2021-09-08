module "openstack" {
  source = "../_base"

  name      = "rhel-8-4"
  image_id  = "7cf88658-58e2-429e-96a2-385d60f5f1fe"
  flavor_id = "893c20cf-d5ea-4c7d-9eee-2bc4b3e5723e"
}

output "ip_address" {
  value = module.openstack.ip_address
}
