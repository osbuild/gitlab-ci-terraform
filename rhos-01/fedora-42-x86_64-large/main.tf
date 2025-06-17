module "openstack" {
  source = "../_base"

  name      = "fedora-42"
  image_id  = "492090d7-8a3d-4e39-af0d-6bc35c646dcd"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
