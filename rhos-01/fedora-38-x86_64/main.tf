module "openstack" {
  source = "../_base"

  name      = "fedora-38"
  image_id  = "0afed108-e9a8-4d09-8c65-786044a15dc2" # Fedora-Cloud-Base-38-1.6
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
