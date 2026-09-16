module "openstack" {
  source = "../_base"

  name      = "rhel-10-2-ga"
  image_id  = "ddb7085e-a076-4716-a988-cf8d7f05442e"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
