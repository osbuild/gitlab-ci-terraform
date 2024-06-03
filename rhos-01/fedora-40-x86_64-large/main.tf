module "openstack" {
  source = "../_base"

  name      = "fedora-40"
  image_id  = "c58bd1bc-7f05-4123-8a51-bde2996550a5"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
