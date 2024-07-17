module "openstack" {
  source = "../_base"

  name      = "fedora-40"
  image_id  = "d60860fe-1596-4481-a36f-bfaeb536b8c7"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
