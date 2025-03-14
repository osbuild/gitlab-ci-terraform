module "openstack" {
  source = "../_base"

  name      = "rhel-10-0-nightly-large"
  image_id  = "150c3f55-f2d1-4f43-ae49-190ae3efa88c"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
