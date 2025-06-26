module "openstack" {
  source = "../_base"

  name      = "rhel-9-6-ga"
  image_id  = "0d8a6385-d818-40ea-9dc3-3154fd131baf"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
