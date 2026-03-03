module "openstack" {
  source = "../_base"

  name      = "rhel-10-1-ga"
  image_id  = "546a616b-3ee2-4e05-bb55-660437cee4e8"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
