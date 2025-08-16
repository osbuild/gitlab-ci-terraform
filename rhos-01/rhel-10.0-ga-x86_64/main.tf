module "openstack" {
  source = "../_base"

  name      = "rhel-10-0-ga"
  image_id  = "5cdf9582-5923-4634-a8a5-6d9797599cdf"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
