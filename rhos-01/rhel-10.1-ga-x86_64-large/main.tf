module "openstack" {
  source = "../_base"

  name      = "rhel-10-1-ga-large"
  image_id  = "546a616b-3ee2-4e05-bb55-660437cee4e8"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
