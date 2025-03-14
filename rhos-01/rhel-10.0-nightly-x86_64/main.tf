module "openstack" {
  source = "../_base"

  name      = "rhel-10-0-nightly"
  image_id  = "150c3f55-f2d1-4f43-ae49-190ae3efa88c"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
