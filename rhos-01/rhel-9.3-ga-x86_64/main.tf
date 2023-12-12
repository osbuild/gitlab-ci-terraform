module "openstack" {
  source = "../_base"

  name      = "rhel-9-3-ga"
  image_id  = "709ecf2c-c26f-416e-aefa-3ac699f8c669"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
