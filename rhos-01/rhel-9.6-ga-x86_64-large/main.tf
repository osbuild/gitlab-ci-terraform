module "openstack" {
  source = "../_base"

  name      = "rhel-9-6-ga-large"
  image_id  = "ddf50504-18b5-4d09-809a-3b8dc1f7bb13"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
