module "openstack" {
  source = "../_base"

  name      = "rhel-9-3-ga-large"
  image_id  = "709ecf2c-c26f-416e-aefa-3ac699f8c669"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
