module "openstack" {
  source = "../_base"

  name      = "rhel-9-4-ga"
  image_id  = "35de4334-995e-4043-ae59-266f253b2306"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
