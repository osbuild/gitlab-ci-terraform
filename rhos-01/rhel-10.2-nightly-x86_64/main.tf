module "openstack" {
  source = "../_base"

  name      = "rhel-10-2-nightly"
  image_id  = "768cea66-0ee0-4587-8c03-6d7acd10e524"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
