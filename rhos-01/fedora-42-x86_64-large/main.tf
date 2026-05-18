module "openstack" {
  source = "../_base"

  name      = "fedora-42-large"
  image_id  = "a9b8d47a-fadf-4466-aef0-8db851220534"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
