module "openstack" {
  source = "../_base"

  name      = "rhel-8-10-ga-large"
  image_id  = "88ae54ac-d761-47f2-b587-e822c79880db"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
