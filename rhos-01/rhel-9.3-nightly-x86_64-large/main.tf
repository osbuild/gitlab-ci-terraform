module "openstack" {
  source = "../_base"

  name      = "rhel-9-3-nightly-large"
  image_id  = "2d9bf1b0-61c8-4c67-85af-428e7ae7d035"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
