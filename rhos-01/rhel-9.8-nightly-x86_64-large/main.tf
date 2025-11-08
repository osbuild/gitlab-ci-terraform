module "openstack" {
  source = "../_base"

  name      = "rhel-9-8-nightly-large"
  image_id  = "b2a010c1-17c5-4da5-a221-0b328f448247"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
