module "openstack" {
  source = "../_base"

  name      = "rhel-10-2-nightly"
  image_id  = "9d54a34d-04d7-4995-8e48-52750064ed20"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
