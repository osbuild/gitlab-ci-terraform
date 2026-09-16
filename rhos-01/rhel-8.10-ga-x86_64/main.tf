module "openstack" {
  source = "../_base"

  name      = "rhel-8-10-ga"
  image_id  = "8ee4f1bd-9a27-4112-8617-adad0732fff6"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
