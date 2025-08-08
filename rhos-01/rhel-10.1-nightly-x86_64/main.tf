module "openstack" {
  source = "../_base"

  name      = "rhel-10-1-nightly"
  image_id  = "1addcf6f-2201-48af-89f5-f1122031509d"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
