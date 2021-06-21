module "openstack" {
  source = "../_base"

  name     = "rhel-8-5"
  image_id = "8c818f23-3913-40ed-8e9d-74b6b53d55d2"
}

output "ip_address" {
  value = module.openstack.ip_address
}
