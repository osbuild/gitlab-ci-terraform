module "openstack" {
  source = "../_base"

  name      = "centos-stream-9"
  image_id  = "3b12e2bc-38be-4c7e-aba8-549d9b14a326"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
