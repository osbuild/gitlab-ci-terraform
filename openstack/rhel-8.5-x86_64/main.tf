module "openstack" {
  source = "../_base"

  name     = "rhel-8-5"
  image_id = "0a96f6b9-6b53-4b1c-b618-c0aa8f2d5d3d"
}

output "ip_address" {
  value = module.openstack.ip_address
}
