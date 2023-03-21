module "openstack" {
  source = "../_base"

  name      = "fedora-38"
  image_id  = "6f3e92ed-9bf0-4aca-8dbd-04bf2206b28f" #x86_64-Fedora-Cloud-Base-20230320.n.0
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
