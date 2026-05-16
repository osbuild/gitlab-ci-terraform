module "openstack" {
  source = "../_base"

  name      = "rhel-9-7-ga"
  image_id  = "f2fb286a-d170-4c8e-9005-6601e879d791"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
