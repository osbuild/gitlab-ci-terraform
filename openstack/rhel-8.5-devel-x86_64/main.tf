module "openstack" {
  source = "../_base"

  name      = "rhel-8-5-devel"
  image_id  = "0a96f6b9-6b53-4b1c-b618-c0aa8f2d5d3d"
  flavor_id = "893c20cf-d5ea-4c7d-9eee-2bc4b3e5723e"
}

output "ip_address" {
  value = module.openstack.ip_address
}
