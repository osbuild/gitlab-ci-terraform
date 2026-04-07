module "openstack" {
  source = "../_base"

  name      = "rhel-10-2-nightly-large"
  image_id  = "9d54a34d-04d7-4995-8e48-52750064ed20"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
