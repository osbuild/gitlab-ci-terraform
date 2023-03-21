module "openstack" {
  source = "../_base"

  name      = "fedora-38"
  image_id  = "6f3e92ed-9bf0-4aca-8dbd-04bf2206b28f" #x86_64-Fedora-Cloud-Base-20230320.n.0
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
