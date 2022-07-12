module "openstack" {
  source = "../_base"

  name      = "rhel-9-1"
  image_id  = "ea4d8610-5125-4f07-aba0-4bf8bd7c9622"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
