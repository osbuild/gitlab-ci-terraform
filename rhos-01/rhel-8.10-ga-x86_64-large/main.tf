module "openstack" {
  source = "../_base"

  name      = "rhel-8-10-ga-large"
  image_id  = "77e1ae34-fa93-4f34-ab1e-fe4f91d0141b"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
