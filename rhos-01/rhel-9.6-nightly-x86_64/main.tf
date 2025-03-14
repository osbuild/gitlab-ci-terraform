module "openstack" {
  source = "../_base"

  name      = "rhel-9-6-nightly"
  image_id  = "b8cd406c-b319-48e9-99b8-dc0f2ccfe78e"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
