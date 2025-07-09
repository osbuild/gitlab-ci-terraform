module "openstack" {
  source = "../_base"

  name      = "rhel-10-1-nightly"
  image_id  = "492a3d9c-94bb-406c-920f-4b4357c6e45f"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
