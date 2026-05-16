module "openstack" {
  source = "../_base"

  name      = "rhel-8-10-ga-large"
  image_id  = "e2874d47-d4c1-4522-bbf3-9070c69c9f5c"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
