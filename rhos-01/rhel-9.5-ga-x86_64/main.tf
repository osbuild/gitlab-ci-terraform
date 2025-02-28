module "openstack" {
  source = "../_base"

  name      = "rhel-9-5-ga"
  image_id  = "0039df68-6aea-47a5-8c53-186aedb4051d"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
