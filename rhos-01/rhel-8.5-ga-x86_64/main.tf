module "openstack" {
  source = "../_base"

  name      = "rhel-8-5-ga"
  image_id  = "a99c9aa6-7a24-4c58-bded-92c4dc4e998a"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
