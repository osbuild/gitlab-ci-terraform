module "openstack" {
  source = "../_base"

  name      = "rhel-9-5-nightly-large"
  image_id  = "eace9fc9-a5c1-4350-8906-43f9191b77b9"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
