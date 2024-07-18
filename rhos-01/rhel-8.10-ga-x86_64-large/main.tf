module "openstack" {
  source = "../_base"

  name      = "rhel-8-10-ga-large"
  image_id  = "f40204d5-8f31-4e6f-bc7f-2e06e9daf849"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
