module "openstack" {
  source = "../_base"

  name      = "rhel-9-0"
  image_id  = "debe655a-cc93-4f42-9d1e-23b81b2d08c4"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
