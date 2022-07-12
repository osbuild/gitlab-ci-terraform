module "openstack" {
  source = "../_base"

  name      = "fedora-36"
  image_id  = "60f5c075-936c-47b4-a00b-0cb6867ffd32"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
