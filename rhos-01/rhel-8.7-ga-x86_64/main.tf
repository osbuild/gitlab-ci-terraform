module "openstack" {
  source = "../_base"

  name      = "rhel-8-7-ga"
  image_id  = "31bbd2af-c85c-4aab-b3ce-7cd23f5267ee"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
