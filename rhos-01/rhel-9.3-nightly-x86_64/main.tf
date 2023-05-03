module "openstack" {
  source = "../_base"

  name      = "rhel-9-3-nightly"
  image_id  = "2d9bf1b0-61c8-4c67-85af-428e7ae7d035"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
