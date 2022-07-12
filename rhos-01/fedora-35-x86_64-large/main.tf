module "openstack" {
  source = "../_base"

  name      = "fedora-35"
  image_id  = "d62a2182-947b-421e-b3db-9b55b4dda522"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
