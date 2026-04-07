module "openstack" {
  source = "../_base"

  name      = "rhel-9-8-nightly"
  image_id  = "dee83223-f083-49f1-acdb-5304af756215"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
