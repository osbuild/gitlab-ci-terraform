module "openstack" {
  source = "../_base"

  name      = "rhel-8-5"
  image_id  = "0a96f6b9-6b53-4b1c-b618-c0aa8f2d5d3d"
  flavor_id = "4b04b7c3-ec50-469f-9c07-c41f0bff4972"
}

output "ip_address" {
  value = module.openstack.ip_address
}
