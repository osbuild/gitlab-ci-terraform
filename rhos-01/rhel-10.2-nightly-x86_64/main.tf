module "openstack" {
  source = "../_base"

  name      = "rhel-10-2-nightly"
  image_id  = "bfc47d8b-b959-46de-9b56-1eab65068a84"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
