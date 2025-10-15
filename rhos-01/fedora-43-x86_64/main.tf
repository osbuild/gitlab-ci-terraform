module "openstack" {
  source = "../_base"

  name      = "fedora-43"
  image_id  = "c3767aba-d853-436a-b557-5b8205655956"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
