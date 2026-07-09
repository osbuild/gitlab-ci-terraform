module "openstack" {
  source = "../_base"

  name      = "rhel-9-9-nightly-large"
  image_id  = "232cfdfd-bc4c-4600-83ae-265518d3d9bf"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
