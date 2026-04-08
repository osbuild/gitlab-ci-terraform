module "openstack" {
  source = "../_base"

  name      = "rhel-9-8-nightly"
  image_id  = "81550637-2ca3-4069-a23c-b4f4ae6d70ee"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
