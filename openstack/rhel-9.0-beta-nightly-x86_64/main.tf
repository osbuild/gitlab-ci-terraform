module "openstack" {
  source = "../_base"

  name      = "rhel-9-0-beta-nightly"
  image_id  = "c332bd07-2b10-4de9-9090-736e904d09a8"
  flavor_id = "893c20cf-d5ea-4c7d-9eee-2bc4b3e5723e"
}

output "ip_address" {
  value = module.openstack.ip_address
}
