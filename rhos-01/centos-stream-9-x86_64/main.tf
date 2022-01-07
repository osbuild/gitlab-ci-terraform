module "openstack" {
  source = "../_base"

  name      = "centos-stream-9"
  image_id  = "9f49b07d-57e2-4998-a8e3-6d13457fde85"
  flavor_id = "f2c4469b-f516-46d1-8b87-1dcca68fb3d9"
}

output "ip_address" {
  value = module.openstack.ip_address
}
