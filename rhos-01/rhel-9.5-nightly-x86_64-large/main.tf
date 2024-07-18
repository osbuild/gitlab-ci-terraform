module "openstack" {
  source = "../_base"

  name      = "rhel-9-5-nightly-large"
  image_id  = "f836a59c-7247-4dc9-93e2-d2209742fa33"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
