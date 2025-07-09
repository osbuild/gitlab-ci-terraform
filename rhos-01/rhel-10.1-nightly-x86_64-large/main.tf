module "openstack" {
  source = "../_base"

  name      = "rhel-10-1-nightly-large"
  image_id  = "492a3d9c-94bb-406c-920f-4b4357c6e45f"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
