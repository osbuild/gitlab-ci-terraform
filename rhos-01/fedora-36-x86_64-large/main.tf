module "openstack" {
  source = "../_base"

  name      = "fedora-36"
  image_id  = "60f5c075-936c-47b4-a00b-0cb6867ffd32"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
